/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef SABERDWFLURRYCOMMAND_H_
#define SABERDWFLURRYCOMMAND_H_

#include "JediCombatQueueCommand.h"

class SaberDwFlurryCommand : public JediCombatQueueCommand {
public:

	SaberDwFlurryCommand(const String& name, ZoneProcessServer* server)
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

#endif //SABERDWFLURRYCOMMAND_H_