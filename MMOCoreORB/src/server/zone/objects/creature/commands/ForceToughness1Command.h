/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCETOUGHNESS1COMMAND_H_
#define FORCETOUGHNESS1COMMAND_H_

#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/managers/combat/CombatManager.h"
#include "templates/params/creature/CreatureAttribute.h"
#include "server/zone/managers/stringid/StringIdManager.h"
#include "server/zone/managers/collision/CollisionManager.h"
#include "server/zone/managers/frs/FrsManager.h"
#include "server/zone/objects/building/BuildingObject.h"

class ForceToughness1Command : public JediQueueCommand {
public:

	ForceToughness1Command(const String& name, ZoneProcessServer* server)
		: JediQueueCommand(name, server) {
			clientEffect = "clienteffect/pl_force_heal_self.cef";
			animationCRC = STRING_HASHCODE("force_healing_1");
	}

	int doQueueCommand(CreatureObject* player, const uint64& target, const UnicodeString& arguments) const {
		int forceCost = 500;
		//int cooldownMilli = 90000; // 2mins
		int durationSec =  3600; // 30 seconds
		unsigned int buffCRC = BuffCRC::FORCE_TOUGHNESS_1;

		if (!checkStateMask(player))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(player))
			return INVALIDLOCOMOTION;

		if (player->isDead() || player->isIncapacitated())
			return INVALIDSTATE;

		ManagedReference<PlayerObject*> ghost = player->getPlayerObject();
		if( ghost == nullptr )
			return GENERALERROR;

		int currentForce = ghost->getForcePower();

		// Check player force
		if (currentForce <= forceCost) {
			player->sendSystemMessage("You do not have enough mental focus to use Toughness"); // "You do not have enough mental focus to use Toughness."
			return GENERALERROR;
		}

				// Build 100% CONSTITUTION, STAMINA, WILLPOWER buff
				ManagedReference<Buff*> buff = new Buff(player, buffCRC, durationSec, BuffType::OTHER);

				Locker locker(buff);

				int healthBuff = 2000;
				int actionBuff = 2000;
				int mindBuff = 2000;
				buff->setAttributeModifier(CreatureAttribute::HEALTH, healthBuff);
				buff->setAttributeModifier(CreatureAttribute::ACTION, actionBuff);
				buff->setAttributeModifier(CreatureAttribute::MIND, mindBuff);

				player->addBuff(buff);

			ghost->setForcePower(currentForce - forceCost);
			player->playEffect(clientEffect, "");
			ghost->playEffect(clientEffect, "");
			//player->sendSystemMessage("You are now in a serene state."); // "Your pets fight with renewed vigor"
			info(String::valueOf(forceCost), true);

		return SUCCESS;
	}

};

#endif //FORCESERENITY1COMMAND_H_
