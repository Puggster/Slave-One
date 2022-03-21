#ifndef MIRRORIMAGESCOMMAND_H_
#define MIRRORIMAGESCOMMAND_H_

#include "server/zone/objects/creature/commands/CombatQueueCommand.h"
//#include "server/zone/objects/creature/events/MirrorImageInvisTask.h"
#include "server/zone/objects/creature/events/DespawnCreatureTask.h"
#include "server/zone/managers/creature/CreatureManager.h"
#include "server/zone/managers/stringid/StringIdManager.h"
//#include "server/zone/packets/scene/UpdateTransformMessage.h"

class MirrorImagesCommand : public CombatQueueCommand {
public:

    MirrorImagesCommand(const String& name, ZoneProcessServer* server)
        : CombatQueueCommand(name, server) {

    }

    int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

        if(creature == nullptr) {
            return 0;
        }

        if (!checkStateMask(creature))
            return INVALIDSTATE;

        if (!checkInvalidLocomotions(creature))
            return INVALIDLOCOMOTION;

        Zone* zone = creature->getZone();
        if (zone == nullptr) {
            return 0;
        }

        if (!creature->isAiAgent()) {
            return 0;
        }
        
       String commandName = "MirrorImages";
       int cooldownTime = 30;

        if (!creature->checkCooldownRecovery(commandName)) {
            return GENERALERROR;
        }

        ManagedReference<AiAgent*> creoAi = cast<AiAgent*>(creature);
        if (creoAi == nullptr) {  
            return 0;
        }

        if (creoAi->hasBuff(commandName.hashCode())) {
            return 0;
        }

        auto npcTemplate = creoAi->getCreatureTemplate();
        if (npcTemplate == nullptr) {
            return 0;
        }

        Locker creoLocker(creature);

        Vector<uint64> creatureStates;
		if (creature->hasState(CreatureState::DIZZY)) {
            creatureStates.add(CreatureState::DIZZY);
        }
        if (creature->hasState(CreatureState::BLINDED)) {
            creatureStates.add(CreatureState::BLINDED);
        }
        if (creature->hasState(CreatureState::STUNNED)) {
            creatureStates.add(CreatureState::STUNNED);
        }
        if (creature->hasState(CreatureState::INTIMIDATED)) {
            creatureStates.add(CreatureState::INTIMIDATED);
        }
        if (creature->hasState(CreatureState::POISONED)) {
            creature->clearState(CreatureState::POISONED);
            //creatureStates.add(CreatureState::POISONED);
        }       
        if (creature->hasState(CreatureState::BLEEDING)) {
            creature->clearState(CreatureState::BLEEDING);
            //creatureStates.add(CreatureState::BLEEDING);
        }      
        if (creature->hasState(CreatureState::DISEASED)) {
            creature->clearState(CreatureState::DISEASED);
            //creatureStates.add(CreatureState::DISEASED);
        }      
        if (creature->hasState(CreatureState::ONFIRE)) {
            creature->clearState(CreatureState::ONFIRE);
			//creatureStates.add(CreatureState::ONFIRE);
        }   
        if (creature->hasState(CreatureState::IMMOBILIZED)) {
			creatureStates.add(CreatureState::IMMOBILIZED);
        }   
        if (creature->hasState(CreatureState::FROZEN)) {
			creatureStates.add(CreatureState::FROZEN);
        }    
        if (creature->hasState(CreatureState::SWIMMING)) {
			creatureStates.add(CreatureState::SWIMMING);
        }            

        creature->setPosture(CreaturePosture::UPRIGHT);

        creoLocker.release();

        String mobile = creoAi->getCreatureTemplate()->getTemplateName();
        if (mobile == "") {
            mobile = "object/mobile/durni_hue.iff";
        }
        int maxHealth = creature->getMaxHAM(0);
        int maxAction = creature->getMaxHAM(3);
        int maxMind = creature->getMaxHAM(6);
        int currentHealth = creature->getHAM(0);
        int currentAction = creature->getHAM(3);
        int currentMind = creature->getHAM(6);
        int healthWounds = creature->getWounds(0);
        int actionWounds = creature->getWounds(3);
        int mindWounds = creature->getWounds(6);
        int battleFatigue = creature->getShockWounds();
        String creatureName = creature->getCreatureName().toString();

        const DeltaVector<ManagedReference<SceneObject*> >* defenderList = creature->getDefenderList();
        SortedVector<CreatureObject*> closeEnemies;
        CombatManager* manager = CombatManager::instance();

        if (defenderList != nullptr) {
            if (defenderList->size() != 0) {
                for (int i = 0; i < defenderList->size(); ++i) {
                    ManagedReference<SceneObject*> attackableTargetSceno = defenderList->get(i);
                    if (attackableTargetSceno != nullptr) {
                        CreatureObject* defender = cast<CreatureObject*>( attackableTargetSceno.get());
                        if (defender != nullptr) {
                            if (creature->getWorldPosition().distanceTo(defender->getWorldPosition()) > 64) {
                                continue;
                            }
                            if (!defender->isAttackableBy(creature)) {
                                continue;
                            }
                            if (!CollisionManager::checkLineOfSight(creature, defender))  {
                                continue;
                            }
                            if (defender->isDead() || defender->isIncapacitated() || defender->isFeigningDeath()) {
                                continue;
                            }
                            else {
                                closeEnemies.add(defender);
                                if (defender->isPlayerCreature()) {
                                    //defender->executeObjectControllerAction(STRING_HASHCODE("target"), 0, defender->getCreatureName());
                                    // defender->executeObjectControllerAction(STRING_HASHCODE("target"), defender->getObjectID(), "");
                                    // defender->executeObjectControllerAction(STRING_HASHCODE("stopfollow"));//, 0, defender->getCreatureName());
                                }
                            }                               
                        }
                    }
                }
            }
        }

        CreatureManager* creatureManager = zone->getCreatureManager();
        if (creatureManager != nullptr) {
            for (int i = 0; i < 3; ++i) {
                CreatureObject* creatureSpawn = creatureManager->spawnCreature(mobile.hashCode(), 0, creature->getPositionX(), creature->getPositionZ(), creature->getPositionY(), creature->getParentID());
                if (creatureSpawn != nullptr) {
                    if (i == 1) {
                        creatureSpawn->playEffect("entertainer_smoke_bomb_level_2.cef", "");
                    }
                    Locker creoSpawnLocker(creatureSpawn);                   
                    creatureSpawn->setMaxHAM(0, maxHealth);
                    creatureSpawn->setMaxHAM(3, maxAction);
                    creatureSpawn->setMaxHAM(6, maxMind);
                    creatureSpawn->setHAM(0, currentHealth);
                    creatureSpawn->setHAM(3, currentAction);
                    creatureSpawn->setHAM(6, currentMind);
                    creatureSpawn->setWounds(0, healthWounds);
                    creatureSpawn->setWounds(3, actionWounds);
                    creatureSpawn->setWounds(6, mindWounds);
                    creatureSpawn->setShockWounds(battleFatigue);
                    creatureSpawn->setCustomObjectName(creatureName, true);

                    ManagedReference<Buff*> mirrorBuff = new Buff(creatureSpawn, commandName.hashCode(), cooldownTime + 5, BuffType::OTHER);

                    Locker locker(mirrorBuff);

                    mirrorBuff->setSkillModifier("private_damage_divisor", 8);
                    creatureSpawn->addBuff(mirrorBuff);

                    locker.release();

                    if (creatureStates.size() > 0) {
                        String buffName = commandName + "state";
                        ManagedReference<Buff*> stateBuff = new Buff(creatureSpawn, buffName.hashCode(), 5, BuffType::OTHER);
                        Locker stateBuffLocker(stateBuff);
                        for(int i=0; i<creatureStates.size(); i++) {
                            uint64 state = creatureStates.get(i);
                            stateBuff->addState(state);
                        }
                        creatureSpawn->addBuff(stateBuff);
                        stateBuffLocker.release();
                    }

                    SceneObject* lootContainer = creatureSpawn->getSlottedObject("inventory");
                    if (lootContainer != nullptr) {
                        int totalItems = lootContainer->getContainerObjectsSize();
                        for (int i = totalItems - 1; i >= 0; --i) {
                            SceneObject* object = lootContainer->getContainerObject(i);
                            if (object != nullptr) {
                                object->destroyObjectFromWorld(true);
                                object->destroyObjectFromDatabase();
                            }
                        }
                    }

                    ManagedReference<AiAgent*> aiObj = cast<AiAgent*>(creatureSpawn);
                    if (aiObj != nullptr) {
                         
                        Reference<DespawnCreatureTask*> despawn = new DespawnCreatureTask(aiObj);
                        aiObj->addPendingTask("despawn", despawn, 1 * 15 * 1000);
                    }

                    creoSpawnLocker.release();

                    if (closeEnemies.size() != 0) {
                        ManagedReference<CreatureObject*> attackableTarget = closeEnemies.get(System::random(closeEnemies.size() - 1));
                        if (manager != nullptr) {
                            Locker bothLock(creatureSpawn, attackableTarget);
                            manager->startCombat(creatureSpawn, attackableTarget, true);
                            auto threatMap = creatureSpawn->getThreatMap();
                            if (threatMap != nullptr) {
                                threatMap->addAggro(attackableTarget, 10000, 0);
                            }
                            bothLock.release();
                        }                     
                    }
                }
            }
        }

        ManagedReference<SceneObject*> targetObject = server->getZoneServer()->getObject(target);

        if (targetObject != nullptr) {
            CreatureObject* targetCreature = cast<CreatureObject*>( targetObject.get());
            if (targetCreature != nullptr) {
                if (targetCreature->isAttackableBy(creature)) {
                    auto threatMap = creature->getThreatMap();
                    if (threatMap != nullptr) {
                        threatMap->setThreatState(targetCreature, ThreatStates::TAUNTED,(uint64)10, (uint64)1);
                    }
                }
            }
        }

        // SortedVector<QuadTreeEntry*> closeObjects(512,512);
        // CloseObjectsVector* closeVector = (CloseObjectsVector*) creature->getCloseObjects();
        
        // if (closeVector == nullptr) {
        //     creature->getZone()->getInRangeObjects(creature->getPositionX(), creature->getPositionY(), 256, &closeObjects, true);
        // } 
        // else {
        //     closeVector->safeCopyTo(closeObjects);
        // }

        // for (int i = 0; i < closeObjects.size(); i++) {
        //     SceneObject* targetObject = static_cast<SceneObject*>(closeObjects.get(i));
            
        //     if (targetObject != nullptr && targetObject->isCreatureObject()) {
        //         targetObject->notifyDissapear(creature);
        //         targetObject->notifyInsert(creature);
        //     }
        // }

        // UpdateTransformMessage* msg = new UpdateTransformMessage(creature);
        // creature->broadcastMessage(msg, true);
    
        // ManagedReference<Zone*> zone = creature->getZone();
        // float creoX = creature->getPositionX();
        // float creoZ = creature->getPositionZ();
        // float creoY = creature->getPositionY();
        // uint64 parent = creature->getParentID();
        
        //creature->switchZone(zone->getZoneName(), creature->getPositionX(), creature->getPositionZ(), creature->getPositionY(), creature->getParentID(), true);
        //creature->switchZone(zone->getZoneName(), creature->getPositionX(), creature->getPositionZ(), creature->getPositionY(), creature->getParentID(), true);
        // creature->setAlternateAppearance("");
        
        
        // creature->setHeight(0.25);
        // String taskName = "setNormalHeight";
        // // // float height = creature->getHeight();

        // Reference<MirrorImageInvisTask*> setNormalHeight = new MirrorImageInvisTask(creature, taskName);
        // creature->addPendingTask(taskName, setNormalHeight, 0.5 * 1000);

        int cooldown = 1 * cooldownTime * 1000;
        creature->addCooldown(commandName, cooldown);      

        return SUCCESS;
    }


};

#endif