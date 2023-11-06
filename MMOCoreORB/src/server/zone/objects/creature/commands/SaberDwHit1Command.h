#ifndef SABERDWHIT1COMMAND_H_
#define SABERDWHIT1COMMAND_H_

#include "JediCombatQueueCommand.h"

class SaberDwHit1Command : public JediCombatQueueCommand {
public:

	SaberDwHit1Command(const String& name, ZoneProcessServer* server)
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

#endif //SABERDWHIT1COMMAND_H_