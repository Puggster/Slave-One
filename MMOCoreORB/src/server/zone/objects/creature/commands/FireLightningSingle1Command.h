/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FIRELIGHTNINGSINGLE1COMMAND_H_
#define FIRELIGHTNINGSINGLE1COMMAND_H_

#include "CombatQueueCommand.h"

class FireLightningSingle1Command : public CombatQueueCommand {
public:

	FireLightningSingle1Command(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		ManagedReference<WeaponObject*> weapon = creature->getWeapon();

		if (weapon == nullptr || !weapon->isLightningRifle()) {
			return INVALIDWEAPON;
		}
		
		UnicodeString args = "healthDamageMultiplier=0.5f;actionDamageMultiplier=0.5f;";

		return doCombatAction(creature, target, args);
	}

};

#endif //FIRELIGHTNINGSINGLE1COMMAND_H_
