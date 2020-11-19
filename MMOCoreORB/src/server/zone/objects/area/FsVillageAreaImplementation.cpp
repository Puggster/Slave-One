/*
 * FsVillageAreaImplementation.cpp
 *
 *  Created on: 01/04/2012
 *      Author: victor
 */

#include "server/zone/objects/area/FsVillageArea.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/Zone.h"
#include "server/zone/objects/player/variables/PlayerQuestData.h"
#include "server/zone/objects/player/FactionStatus.h"
#include "server/zone/managers/faction/FactionManager.h"
#include "server/chat/ChatManager.h"

void FsVillageAreaImplementation::notifyEnter(SceneObject* player) {
	ActiveAreaImplementation::notifyEnter(player);

	if (!player->isPlayerCreature()) {
		return;
	}

	float x = player->getPositionX();
	float y = player->getPositionY();

	float diffY = y - getPositionY();
	float diffX = x - getPositionX();

	float angle = atan2(diffY == 0.f ? 1 : diffY, diffX == 0.f ? 1 : diffX);

	CreatureObject* playerCreature = cast<CreatureObject*>(player);
	PlayerObject* ghost = playerCreature->getPlayerObject();
	float rad = getRadius() * 1.05;

	float newPosX = getPositionX() + (cos(angle) * rad);
	float newPosY = getPositionY() + (sin(angle) * rad);

	// Those who aren't a valid player, do not currently have or have had the Village elder quest cannot enter.
	if (ghost != nullptr) {
		//if (ghost->hasGodMode())
		//	return;

		if (zone->getZoneName() == "rori"){
				info("Target is on Rori", true);
			if (playerCreature->getFaction() == 0){
				info("Target is Neutral and cannot enter Restuss", true);
				playerCreature->sendSystemMessage("You may not enter the city due to the ongoing battle between the Republic and Confederacy");
				playerCreature->teleport(newPosX, getZone()->getHeight(newPosX, newPosY), newPosY, 0);
			}else{
				info("Target is factioned and has been set to Overt", true);
				playerCreature->sendSystemMessage("You have been set to Overt due to the ongoing battle between the Republic and Confederacy");
				playerCreature->setFactionStatus(FactionStatus::OVERT);
				StringBuffer rBroadcast;
				String victimName = playerCreature->getFirstName();
				rBroadcast << "\\#00bfff" << victimName << "\\#ffd700" << " has been spotted in Restuss";
				playerCreature->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, rBroadcast.toString());
			}
		}
		if (zone->getZoneName() == "dathomir"){
			if (!ghost->hasActiveQuestBitSet(PlayerQuestData::FS_VILLAGE_ELDER) && !ghost->hasCompletedQuestsBitSet(PlayerQuestData::FS_VILLAGE_ELDER)) {
				playerCreature->teleport(newPosX, getZone()->getHeight(newPosX, newPosY), newPosY, 0);
				playerCreature->sendSystemMessage("@base_player:fs_village_unavailable");
			} else if (playerCreature->isInCombat()) {
				playerCreature->teleport(newPosX, getZone()->getHeight(newPosX, newPosY), newPosY, 0);
				playerCreature->sendSystemMessage("@base_player:fs_village_no_combat");
			}
		}
	}
}
