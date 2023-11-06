/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef SABERDWTHROWCOMMAND_H_
#define SABERDWTHROWCOMMAND_H_

#include "JediCombatQueueCommand.h"

class SaberDwThrowCommand : public JediCombatQueueCommand {
public:

	SaberDwThrowCommand(const String& name, ZoneProcessServer* server)
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

		return doCombatAction(creature, target);
	}

};

#endif //SABERDWTHROWCOMMAND_H_