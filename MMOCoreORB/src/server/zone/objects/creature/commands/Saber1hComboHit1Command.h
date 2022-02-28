/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef SABER1HCOMBOHIT1COMMAND_H_
#define SABER1HCOMBOHIT1COMMAND_H_

#include "JediCombatQueueCommand.h"

class Saber1hComboHit1Command : public JediCombatQueueCommand {
public:

	Saber1hComboHit1Command(const String& name, ZoneProcessServer* server)
		: JediCombatQueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (isWearingArmor(creature)) {
			return NOJEDIARMOR;
		}

		UnicodeString args = "healthDamageMultiplier=0.5f;actionDamageMultiplier=0.5f;";
		
		return doCombatAction(creature, target, args);
	}

};

#endif //SABER1HCOMBOHIT1COMMAND_H_
