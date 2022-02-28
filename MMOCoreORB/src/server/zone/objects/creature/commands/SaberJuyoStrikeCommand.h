/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef SABERJUYOSTRIKECOMMAND_H_
#define SABERJUYOSTRIKECOMMAND_H_

#include "JediCombatQueueCommand.h"

class SaberJuyoStrikeCommand : public JediCombatQueueCommand {
public:

	SaberJuyoStrikeCommand(const String& name, ZoneProcessServer* server)
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

#endif //SABERJUYOSTRIKECOMMAND_H_
