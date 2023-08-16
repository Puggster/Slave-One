/*
 * DespawnCreatureTask.h
 *
 *  Created on: 12/07/2010
 *      Author: victor
 */

#ifndef DESPAWNCREATURETASK_H_
#define DESPAWNCREATURETASK_H_

#include "server/zone/objects/creature/ai/AiAgent.h"
#include "server/zone/Zone.h"

class DespawnCreatureTask : public Task {
	ManagedReference<AiAgent*> agent;

public:
	DespawnCreatureTask(AiAgent* creature) {
		agent = creature;

		auto zone = creature->getZone();

		if (zone != nullptr) {
			setCustomTaskQueue(zone->getZoneName());
		}
	}

	void run() {
		Locker locker(agent);

			Zone* zone = agent->getZone();


			//hopefully this ugly derp will fix despawning o.o
			if (agent->getPendingTask("despawnSecurity") != nullptr)
				agent->removePendingTask("despawnSecurity");
			
			if (agent->getPendingTask("ninjaDespawn") != nullptr)
				agent->removePendingTask("ninjaDespawn");

			if (agent->getPendingTask("despawn") != nullptr)
				agent->removePendingTask("despawn");

			if (zone == nullptr)
				return;

		agent->destroyObjectFromWorld(false);
		agent->notifyDespawn(zone);

	}
};

#endif /* DESPAWNCREATURETASK_H_ */