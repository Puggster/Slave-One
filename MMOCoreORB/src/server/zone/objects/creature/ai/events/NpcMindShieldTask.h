#ifndef NPCMINDSHIELDTASK_H_
#define NPCMINDSHIELDTASK_H_

#include "server/zone/ZoneServer.h"
#include "server/zone/Zone.h"
#include "server/zone/objects/creature/CreatureObject.h"

class NpcMindShieldTask : public Task {
	ManagedReference<CreatureObject*> creature;
    String taskName;
    uint32 buffCRC;

    public:

	NpcMindShieldTask(CreatureObject* creo, String taskNameo) {
        creature = creo;
        taskName = taskNameo;
        buffCRC = taskName.hashCode();
	}

	void run() {
        if (creature != nullptr) {
            Locker lockerC(creature);
            if (creature->isDead() || creature->isIncapacitated() || !creature->isInCombat()) {
                creature->removePendingTask(taskName);
                creature->removeBuff(buffCRC);
            }
            if (creature->hasBuff(buffCRC)) {
                float currentMind = creature->getHAM(6);
                if (currentMind < 1) {
                    currentMind = 1;
                }

                float maxMind = creature->getMaxHAM(6);

                if ((maxMind / currentMind) > 4) {
                    creature->removePendingTask(taskName);
                    creature->removeBuff(buffCRC);
                }
                else {                        
                    creature->playEffect("clienteffect/npc_mind_shield_effect.cef", "");
                    creature->setHAM(6, currentMind * 0.98);
                    this->reschedule(1 * 1000);
                }
            }
            else {
                creature->healDamage(creature, 6, creature->getMaxHAM(6) / 30);
                this->reschedule(1 * 1000); 
            }       
        }
    }
};

#endif
		