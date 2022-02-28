/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef SPRAYSHOTCOMMAND_H_
#define SPRAYSHOTCOMMAND_H_

#include "CombatQueueCommand.h"

class SprayShotCommand : public CombatQueueCommand {
public:

	SprayShotCommand(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		UnicodeString args = "healthDamageMultiplier=0.5f;actionDamageMultiplier=0.5f;";

		return doCombatAction(creature, target, args);
	}

};

#endif //SPRAYSHOTCOMMAND_H_
