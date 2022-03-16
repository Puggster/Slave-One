	/*
					Copyright <SWGEmu>
			See file COPYING for copying conditions.*/

	#ifndef LOOTCOMMAND_H_
	#define LOOTCOMMAND_H_

	#include "server/zone/objects/scene/SceneObject.h"
	#include "server/zone/managers/player/PlayerManager.h"
	#include "server/zone/managers/group/GroupLootTask.h"
	#include "server/zone/objects/transaction/TransactionLog.h"
	#include "server/zone/objects/creature/events/DespawnCreatureTask.h"
	

	class LootCommand : public QueueCommand {

	public:
		enum {
			NOPICKUPITEMS = 0,
			ITEMFOROTHER = 1,
			PICKEDANDREMAINING = 2,
			PICKEDANDEMPTY = 3
		};

		LootCommand(const String& name, ZoneProcessServer* server)
			: QueueCommand(name, server) {

		}

		int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
			
			if (creature == nullptr)
				return 0;
			
			if (creature->isDead())
				return GENERALERROR;

			if (!checkStateMask(creature))
				return INVALIDSTATE;

			if (!checkInvalidLocomotions(creature))
				return INVALIDLOCOMOTION;

			int pickupResult = 0;
			float lootRange = 32;

			//ManagedReference<SceneObject*> initialLootContainer = nullptr;
			//ManagedReference<AiAgent*> firstLootedAi = nullptr;
			//ManagedReference<SceneObject*> lastOpenedContainer = nullptr;

			ManagedReference<AiAgent*> firstLootedAi = server->getZoneServer()->getObject(target).castTo<AiAgent*>();

			if (firstLootedAi == nullptr)
				return INVALIDTARGET;

			if (!firstLootedAi->isDead())
				return GENERALERROR;

			if (!checkDistance(firstLootedAi, creature, 16)) {
				creature->sendSystemMessage("@error_message:target_out_of_range"); //"Your target is out of range for this action."
				return GENERALERROR;
			}

			// Get the corpse's inventory.
			SceneObject* initialLootContainer = firstLootedAi->getSlottedObject("inventory");
			if (initialLootContainer == nullptr) {
				return GENERALERROR;
			}

			bool looterIsOwner = (initialLootContainer->getContainerPermissions()->getOwnerID() == creature->getObjectID());
			bool groupIsOwner = (initialLootContainer->getContainerPermissions()->getOwnerID() == creature->getGroupID());

			if (!looterIsOwner && !groupIsOwner) {
				int pickupResult = pickupOwnedItems(firstLootedAi, creature, initialLootContainer);
				if (pickupResult < 2) { //Player didn't pickup an item nor is one available for them.
					StringIdChatParameter noPermission("error_message","no_corpse_permission"); //"You do not have permission to access this corpse."
					creature->sendSystemMessage(noPermission);
					return GENERALERROR;
				} else if (pickupResult == PICKEDANDEMPTY) {
					creature->getZoneServer()->getPlayerManager()->rescheduleCorpseDestruction(creature, firstLootedAi);
					return SUCCESS;
				}
				return GENERALERROR;
			}

			bool lootNormal = arguments.toString().beginsWith("normal");
			bool lootNormalAll = arguments.toString().beginsWith("normalall");

			if (lootNormal) {
				if (looterIsOwner) {
					if (lootNormalAll) {
						PlayerManager* playerManager = server->getZoneServer()->getPlayerManager();
						playerManager->lootAll(creature, firstLootedAi);
					} else {
						//Check if the corpse's inventory contains any items.
						if (initialLootContainer->getContainerObjectsSize() < 1) {
							creature->sendSystemMessage("@error_message:corpse_empty"); //"You find nothing else of value on the selected corpse."
							creature->getZoneServer()->getPlayerManager()->rescheduleCorpseDestruction(creature, firstLootedAi);
						} else {
							firstLootedAi->notifyObservers(ObserverEventType::LOOTCREATURE, creature, 0);
							initialLootContainer->openContainerTo(creature);
						}
					}

					return SUCCESS;
				}

				// If player and their group don't own the corpse, pick up any owned items left on corpse due to full inventory, then fail.
				if (!groupIsOwner) {
					int pickupResult = pickupOwnedItems(firstLootedAi, creature, initialLootContainer);
					if (pickupResult < 2) { //Player didn't pickup an item nor is one available for them.
						StringIdChatParameter noPermission("error_message","no_corpse_permission"); //"You do not have permission to access this corpse."
						creature->sendSystemMessage(noPermission);
						return GENERALERROR;
					} else if (pickupResult == PICKEDANDEMPTY) {
						creature->getZoneServer()->getPlayerManager()->rescheduleCorpseDestruction(creature, firstLootedAi);
						return SUCCESS;
					}

					return SUCCESS;
				}

				// If looter's group is the owner, attempt to pick up any owned items, then process group loot rule.
				int pickupResult = pickupOwnedItems(firstLootedAi, creature, initialLootContainer);
				switch (pickupResult) {
				case NOPICKUPITEMS: //No items available for anyone to pickup.
					break;
				case ITEMFOROTHER: //No items available for looter to pickup, but one is available for someone else.
					firstLootedAi->notifyObservers(ObserverEventType::LOOTCREATURE, creature, 0);
					initialLootContainer->openContainerTo(creature);
					return SUCCESS;
				case PICKEDANDREMAINING: //An item was available for the looter, there are items remaining.
					return SUCCESS;
				case PICKEDANDEMPTY: //An item was available for the looter, there are NO items remaining.
					creature->getZoneServer()->getPlayerManager()->rescheduleCorpseDestruction(creature, firstLootedAi);
					return SUCCESS;
				default:
					break;
				}

				ManagedReference<GroupObject*> group = creature->getGroup();
				if (group == nullptr)
					return GENERALERROR;

				GroupLootTask* task = new GroupLootTask(group, creature, firstLootedAi, false, lootNormalAll, initialLootContainer);
				task->execute();
				return SUCCESS;
			}
			

			bool lootAll = arguments.toString().beginsWith("all");

			if (firstLootedAi->isLootCollector()) {
				if (looterIsOwner) {
					if (lootAll) {
						PlayerManager* playerManager = server->getZoneServer()->getPlayerManager();
						playerManager->lootAll(creature, firstLootedAi);
					}
					else {
						initialLootContainer->openContainerTo(creature);
					}

					int totalItems = initialLootContainer->getContainerObjectsSize();
					if (totalItems < 1) {
						creature->getZoneServer()->getPlayerManager()->rescheduleCorpseDestruction(creature, firstLootedAi);
					}
				return SUCCESS;
				}
			}

			ManagedReference<GroupObject*> group = creature->getGroup();

			if (group != nullptr) {
				if (group->getLootRule() == GroupManager::MASTERLOOTER) {
					if (!group->checkMasterLooter(creature)) {
						StringIdChatParameter masterOnly("group","master_only"); //"Only the Master Looter is allowed to loot!"
						masterOnly.setTO(group->getMasterLooterID());
						creature->sendSystemMessage(masterOnly);
						return SUCCESS;
					}
				}
			}
			
			firstLootedAi->setLootCollector(true);

			Reference<DespawnCreatureTask*> despawn = firstLootedAi->getPendingTask("despawn").castTo<DespawnCreatureTask*>();
			if (despawn != nullptr) {
				despawn->cancel();
			}
			Reference<DespawnCreatureTask*> despawnSecurityCheck = firstLootedAi->getPendingTask("despawnSecurity").castTo<DespawnCreatureTask*>();
			if (despawnSecurityCheck == nullptr) {
				Reference<DespawnCreatureTask*> despawnSecurity = new DespawnCreatureTask(firstLootedAi);
				if (despawnSecurity != nullptr) {
					firstLootedAi->addPendingTask("despawnSecurity", despawnSecurity, 5 * 60 * 1000);
				}
			}
			//creature->getZoneServer()->getPlayerManager()->rescheduleCorpseDestruction(creature, firstLootedAi);

			// Reference<DespawnCreatureTask*> despawnCheck = firstLootedAi->getPendingTask("despawn").castTo<DespawnCreatureTask*>();
			// if (despawnCheck != nullptr) {
			// 	despawnCheck->cancel();
			// }

			// Reference<DespawnCreatureTask*> despawn = new DespawnCreatureTask(firstLootedAi);
			// firstLootedAi->addPendingTask("despawn", despawn, 1 * 20 * 1000);
				//despawn->cancel();
				//if (initialLootContainer->getContainerObjectsSize() > 0) {
					//despawn->reschedule(1 * 60 * 1000);
				//}
				// else {
				// 	creature->getZoneServer()->getPlayerManager()->rescheduleCorpseDestruction(creature, firstLootedAi);
				// }

			

			try {
				CloseObjectsVector* closeObjectsVector = (CloseObjectsVector*) creature->getCloseObjects();
				SortedVector<QuadTreeEntry*> closeObjects;
				closeObjectsVector->safeCopyReceiversTo(closeObjects, CloseObjectsVector::CREOTYPE);

				for (int i = 0; i < closeObjects.size(); ++i) {
					SceneObject* object = static_cast<SceneObject*>(closeObjects.get(i));

					if (object == nullptr) {
						continue;
					}

					if (object == creature) {
						//error("object is attacker");
						continue;
					}

					if (!object->isCreatureObject())
						continue;

					if (!object->isAiAgent())
						continue;
					
					AiAgent* ai = cast<AiAgent*>( object);
			// ManagedReference<AiAgent*> ai = server->getZoneServer()->getObject(target).castTo<AiAgent*>();
					if (ai == nullptr)
						//return INVALIDTARGET;
						continue;

					Locker locker(ai, creature);

					if (!ai->isDead())// || creature->isDead())
						//return GENERALERROR;
						continue;

					if (!checkDistance(ai, creature, lootRange)) {
						//creature->sendSystemMessage("@error_message:target_out_of_range"); //"Your target is out of range for this action."
						//return GENERALERROR;
						continue;
					}

					//Get the corpse's inventory.
					SceneObject* lootContainer = ai->getSlottedObject("inventory");
					if (lootContainer == nullptr)
						//return GENERALERROR;
						continue;

					//Determine the loot rights.
					looterIsOwner = (lootContainer->getContainerPermissions()->getOwnerID() == creature->getObjectID());
					groupIsOwner = (lootContainer->getContainerPermissions()->getOwnerID() == creature->getGroupID());

					//Allow player to loot the corpse if they own it.
					if (looterIsOwner) {
						if (lootAll) {
							PlayerManager* playerManager = server->getZoneServer()->getPlayerManager();
							playerManager->lootAll(creature, ai);
						} 
						//else {
						// 	//Check if the corpse's inventory contains any items.
						// 	if (lootContainer->getContainerObjectsSize() < 1) {
						// 		//creature->sendSystemMessage("@error_message:corpse_empty"); //"You find nothing else of value on the selected corpse."
						// 		creature->getZoneServer()->getPlayerManager()->rescheduleCorpseDestruction(creature, ai);
							//} 
							else {
								// if (lastOpenedContainer != nullptr) {
								// 	lastOpenedContainer->closeContainerTo(creature);
								// }
								
								if (ai != firstLootedAi) {
									if (ai->isLootCollector())
										continue;

									Locker aiInventoryLocker(ai, initialLootContainer);
									//if (!lootContainer->isContainerFullRecursive()) {
									transferLootItemsToInitialLootContainer(firstLootedAi, creature, lootContainer, initialLootContainer);
										//creature->sendSystemMessage("initialLootContainer not nullptr"); //testing
									aiInventoryLocker.release();
									//}
								}
								else if (ai == firstLootedAi) {
									// initialLootContainer = lootContainer;
									// firstLootedAi = ai;
									lootContainer->openContainerTo(creature);
									//creature->sendSystemMessage("initialLootContainer nullptr"); //testing

									// Reference<DespawnCreatureTask*> despawn = ai->getPendingTask("despawn").castTo<DespawnCreatureTask*>();
									// if (despawn != nullptr) {
									// 	despawn->cancel();

									// 	despawn->reschedule(10 * 60 * 1000);
									// }								
								}

								handleCredits(ai, creature);

								// if (ai->isCreature()) {
								// 	Creature* cr = cast<Creature*>( ai);
								// 	if (cr != nullptr) {
								// 		handleHarvesting(cr, creature, lootRange);
								// 	}
								// }

								ai->notifyObservers(ObserverEventType::LOOTCREATURE, creature, 0);
								
								//lastOpenedContainer = lootContainer;

								if (ai != firstLootedAi && !ai->isLootCollector()) {
									//ai->destroyObjectFromWorld(true);
  									creature->getZoneServer()->getPlayerManager()->rescheduleCorpseDestruction(creature, ai);
								}

							}

						//}					
						continue;
						//return SUCCESS;
					}

					//If player and their group don't own the corpse, pick up any owned items left on corpse due to full inventory, then fail.
					if (!groupIsOwner) {
						pickupResult = pickupOwnedItems(ai, creature, lootContainer);
						if (pickupResult < 2) { //Player didn't pickup an item nor is one available for them.
							//StringIdChatParameter noPermission("error_message","no_corpse_permission"); //"You do not have permission to access this corpse."
							//creature->sendSystemMessage(noPermission);
							continue;
							//return GENERALERROR;
						} else if (pickupResult == PICKEDANDEMPTY) {
							//creature->getZoneServer()->getPlayerManager()->rescheduleCorpseDestruction(creature, ai);
							continue;
							//return SUCCESS;
						}
						continue;
						//return SUCCESS;
					}

					//If looter's group is the owner, attempt to pick up any owned items, then process group loot rule.
					pickupResult = pickupOwnedItems(ai, creature, lootContainer);
					switch (pickupResult) {
					case NOPICKUPITEMS: //No items available for anyone to pickup.
						break;
						//continue;
					case ITEMFOROTHER: //No items available for looter to pickup, but one is available for someone else.
						ai->notifyObservers(ObserverEventType::LOOTCREATURE, creature, 0);
						//lootContainer->openContainerTo(creature);
						//return SUCCESS;
						continue;
					case PICKEDANDREMAINING: //An item was available for the looter, there are items remaining.
						//return SUCCESS;
						continue;
					case PICKEDANDEMPTY: //An item was available for the looter, there are NO items remaining.
						//creature->getZoneServer()->getPlayerManager()->rescheduleCorpseDestruction(creature, ai);
						//return SUCCESS;
						continue;
					default:
						break;
					}

					
					if (group == nullptr)
						//return GENERALERROR;
						continue;

					// if (initialLootContainer == nullptr) {
					// 	initialLootContainer = lootContainer;
					// 	firstLootedAi = ai;
					// }

					GroupLootTask* task = new GroupLootTask(group, creature, ai, true, lootAll, initialLootContainer);
					task->execute();
					//return SUCCESS;
					if (ai != firstLootedAi && !ai->isLootCollector()) {
						creature->getZoneServer()->getPlayerManager()->rescheduleCorpseDestruction(creature, ai);
					}
				}
			}
			catch (Exception& e) {
			}
			if (pickupResult == PICKEDANDREMAINING) {
				StringIdChatParameter full("group", "you_are_full"); //"Your Inventory is full."
				creature->sendSystemMessage(full);
			}

			return SUCCESS;
		}

		void transferLootItemsToInitialLootContainer(AiAgent* ai, CreatureObject* creature, SceneObject* lootContainer, SceneObject* intitalLootContainer) const {
			if (ai != nullptr && creature != nullptr && lootContainer != nullptr) {
				int totalItems = lootContainer->getContainerObjectsSize();
				//creature->sendSystemMessage("transfer1");
				if (totalItems > 0) {
					//creature->sendSystemMessage("transfer2");
				// 	ContainerPermissions* contPerms = lootContainer->getContainerPermissionsForUpdate();
				// 	if (contPerms != nullptr) {
				// 		if (intitalLootContainer != nullptr) {
				// 			bool attemptedPickup = false;
				// 			bool pickupAvailableOther = false;
							//Check each loot item to see if the player owns it.
							for (int i = totalItems - 1; i >= 0; --i) {
								SceneObject* object = lootContainer->getContainerObject(i);
								if (object == nullptr) 
									continue;

								// ContainerPermissions* itemPerms = object->getContainerPermissionsForUpdate();
								// if (itemPerms == nullptr) 
								// 	continue;

								// //Check if player owns the loot item.
								// uint64 itemOwnerID = itemPerms->getOwnerID();
								// if (itemOwnerID == creature->getObjectID()) {
									//Attempt to transfer the item to the player.
									//attemptedPickup = true;
									//if (!intitalLootContainer->isContainerFullRecursive()) {
										//uint64 originalOwner = contPerms->getOwnerID();
										//contPerms->setOwner(creature->getObjectID());
										ai->getZoneServer()->getObjectController()->transferObject(object, intitalLootContainer, -1, true, true);		
										//itemPerms->clearDenyPermission("player", ContainerPermissions::OPEN);
										//itemPerms->clearDenyPermission("player", ContainerPermissions::MOVECONTAINER);		
										//contPerms->setOwner(originalOwner);					
									//}
								//}
							}
						//}
					//}
				}
			}
		}

		int pickupOwnedItems(AiAgent* ai, CreatureObject* creature, SceneObject* lootContainer) const {
			/* Return codes:
			* NOPICKUPITEMS: No items available for anyone to pickup.
			* ITEMFOROTHER: No items available for looter to pickup, but one is available for someone else.
			* PICKEDANDREMAINING: An item was available for the looter, there are items remaining.
			* PICKEDANDEMPTY: An item was available for the looter, there are NO items remaining.
			*/

			bool attemptedPickup = false;
			bool pickupAvailableOther = false;

			int totalItems = lootContainer->getContainerObjectsSize();
			if (totalItems < 1) return NOPICKUPITEMS;

			ContainerPermissions* contPerms = lootContainer->getContainerPermissionsForUpdate();
			if (contPerms == nullptr) return NOPICKUPITEMS;

			SceneObject* playerInventory = creature->getSlottedObject("inventory");
			if (playerInventory == nullptr) return NOPICKUPITEMS;

			//Check each loot item to see if the player owns it.
			for (int i = totalItems - 1; i >= 0; --i) {
				SceneObject* object = lootContainer->getContainerObject(i);
				if (object == nullptr) continue;

				ContainerPermissions* itemPerms = object->getContainerPermissionsForUpdate();
				if (itemPerms == nullptr) continue;

				//Check if player owns the loot item.
				uint64 itemOwnerID = itemPerms->getOwnerID();
				if (itemOwnerID == creature->getObjectID()) {

					//Attempt to transfer the item to the player.
					attemptedPickup = true;
					if (playerInventory->isContainerFullRecursive()) {
						StringIdChatParameter full("group", "you_are_full"); //"Your Inventory is full."
						//creature->sendSystemMessage(full);
						return PICKEDANDREMAINING;
					}

					uint64 originalOwner = contPerms->getOwnerID();
					contPerms->setOwner(creature->getObjectID());
					TransactionLog trx(ai, creature, object, TrxCode::NPCLOOTCLAIM);

					if (creature->getZoneServer()->getObjectController()->transferObject(object, playerInventory, -1, true)) {
						itemPerms->clearDenyPermission("player", ContainerPermissions::OPEN);
						itemPerms->clearDenyPermission("player", ContainerPermissions::MOVECONTAINER);
						trx.commit();
					} else {
						trx.abort() << "Failed to transferObject to player";
					}

					contPerms->setOwner(originalOwner);

				} else if (itemOwnerID != 0)
					pickupAvailableOther = true;
			}

			//Determine which result code to return.
			if (attemptedPickup) {
				if (lootContainer->getContainerObjectsSize() > 0)
					return PICKEDANDREMAINING;
				else
					return PICKEDANDEMPTY;
			}

			if (pickupAvailableOther)
				return ITEMFOROTHER;

			return NOPICKUPITEMS;
		}

		void handleHarvesting(Creature* ai, CreatureObject* creature, float lootRange) const {

			byte type = 0;

			Vector<int> types;
			if(!ai->getMeatType().isEmpty()) {
				types.add(234);
			}

			if(!ai->getHideType().isEmpty()) {
				types.add(235);
			}

			if(!ai->getBoneType().isEmpty()) {
				types.add(236);
			}
			if(types.size() > 0)
				type = types.get(System::random(types.size() -1));
			

			if(type != 0) {
				if (canHarvest(ai, creature, lootRange)) {
					if (ai->isDead()) {
						if (ai->getZone() != nullptr) {
							if (ai->getDnaState() != CreatureManager::DNADEATH) {
								ManagedReference<CreatureManager*> manager = ai->getZone()->getCreatureManager();
								manager->harvest(ai, creature, type);
							}
						}
					}
				}
			}
		}

		void handleCredits(AiAgent* ai, CreatureObject* creature) const {
			auto trxGroup = TransactionLog::getNewTrxGroup();

			int cashCredits = ai->getCashCredits();

			if (cashCredits > 0) {
				int luck = creature->getSkillMod("force_luck");

				if (luck > 0)
					cashCredits += (cashCredits * luck) / 20;

				{
					TransactionLog trx(ai, creature, TrxCode::NPCLOOTCLAIM, cashCredits, true);
					trx.setTrxGroup(trxGroup);
					trx.addState("srcDisplayedName", ai->getDisplayedName());
					creature->addCashCredits(cashCredits, true);
					ai->clearCashCredits();
				}

				StringIdChatParameter param("base_player", "prose_coin_loot"); //You loot %DI credits from %TT.
				param.setDI(cashCredits);
				param.setTT(ai->getObjectID());

				creature->sendSystemMessage(param);
			}
		}

		bool canHarvest(Creature* ai, CreatureObject* player, float lootRange) const {

			if(!player->isInRange(ai, lootRange) || player->isInCombat() || !player->hasSkill("outdoors_scout_novice")
					|| player->isDead() || player->isIncapacitated() || ai->isPet())
				return false;

			if (!ai->hasOrganics())
				return false;

			if (player->getSkillMod("creature_harvesting") < 1)
				return false;

			if (ai->checkIfAlreadyHarvested(player))
				return false;

			SceneObject* creatureInventory = ai->getSlottedObject("inventory");

			if (creatureInventory == nullptr)
				return false;

			uint64 lootOwnerID = creatureInventory->getContainerPermissions()->getOwnerID();

			if (player->getObjectID() == lootOwnerID || (player->isGrouped() && player->getGroupID() == lootOwnerID))
				return true;

			return false;
		}
	};

	#endif //LOOTCOMMAND_H_