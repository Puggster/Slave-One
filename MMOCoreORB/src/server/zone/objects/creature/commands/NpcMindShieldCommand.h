#ifndef NPCMINDSHIELDCOMMAND_H_
#define NPCMINDSHIELDCOMMAND_H_

#include "server/zone/objects/creature/commands/CombatQueueCommand.h"
#include "server/zone/objects/creature/ai/events/NpcMindShieldTask.h"
#include "server/zone/managers/creature/CreatureManager.h"
#include "server/zone/managers/stringid/StringIdManager.h"

class NpcMindShieldCommand : public CombatQueueCommand {
public:

    NpcMindShieldCommand(const String& name, ZoneProcessServer* server)
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
        
       String commandName = "npcMindShield";
       int cooldownTime = 60 * 1000;

        if (!creature->checkCooldownRecovery(commandName)) {
            return GENERALERROR;
        }

        if (creature->hasBuff(commandName.hashCode())) {
            return 0;
        }

        ManagedReference<Buff*> shieldBuff = new Buff(creature, commandName.hashCode(), 120, BuffType::OTHER);

        Locker locker(shieldBuff);

        creature->addBuff(shieldBuff);

        locker.release();
        
        Reference<NpcMindShieldTask*> shieldTask = new NpcMindShieldTask(creature, commandName);
        creature->addPendingTask(commandName, shieldTask, 0);

        creature->addCooldown(commandName, cooldownTime);      

        return SUCCESS;
    }

};

#endif