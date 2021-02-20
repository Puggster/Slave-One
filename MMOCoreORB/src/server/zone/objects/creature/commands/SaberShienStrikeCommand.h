/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef SABERSHIENSTRIKECOMMAND_H_
#define SABERSHIENSTRIKECOMMAND_H_

#include "JediCombatQueueCommand.h"

class SaberShienStrikeCommand : public JediCombatQueueCommand {
public:

	SaberShienStrikeCommand(const String& name, ZoneProcessServer* server)
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

#endif //SABERSHIENSTRIKECOMMAND_H_
