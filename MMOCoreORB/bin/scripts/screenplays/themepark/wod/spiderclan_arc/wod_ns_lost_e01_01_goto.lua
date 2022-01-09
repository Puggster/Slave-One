local QuestManager = require("managers.quest.quest_manager")
require("utils.helpers")

wodNSLostE0101Goto = GoToLocation:new {
	-- Task properties
	taskName = "wodNSLostE0101Goto",
	-- GoToLocation properties
	waypointDescription = "@theme_park_wod/wod_ns_lost_e01:task01_waypoint_name",
	spawnPoint = {x = -1408, y = 5638},
	spawnPlanet = "dathomir",
	spawnRadius = 5,
}

-- Event handler for the enter active area event.
-- The event will complete the task.
-- @param pPlayer pointer to the creature object of the player.
function wodNSLostE0101Goto:onEnteredActiveArea(pPlayer)
	if (pPlayer == nil) then
		return 1
	end

	self:finish(pPlayer)
	self:sendCommMessage(pPlayer)
	QuestManager.completeQuest(pPlayer, QuestManager.quests.WOD_NS_LOST_E01_01)
	QuestManager.activateQuest(pPlayer, QuestManager.quests.WOD_NS_LOST_E01_02)
	wodNSLostE0102Goto:start(pPlayer)
	return 1
end

-- Event handler for the onSuccessfulSpawn.
-- The event will activate the quest.
-- @param pPlayer pointer to the creature object of the player.
function wodNSLostE0101Goto:onSuccessfulSpawn(pPlayer)
	if (pPlayer == nil) then
		return
	end

end

function wodNSLostE0101Goto:onLoggedIn(pPlayer)
	if (self:hasTaskStarted(pPlayer)) then
		return 0
	end
	self:start(pPlayer)
	return 0
end

function wodNSLostE0101Goto:sendCommMessage(pPlayer)
	local sui = SuiMessageBox.new("wodNSLostE0101Goto", "defaultCallBack")
	sui.setTitle("@theme_park_wod/wod_ns_lost_e01:comm_message_title")
	sui.setPrompt("@theme_park_wod/wod_ns_lost_e01:task01_comm_message_text")
	sui.hideCancelButton()
	sui.sendTo(pPlayer)
end

function wodNSLostE0101Goto:defaultCallback(pPlayer, pSui, eventIndex, ...)
	createEvent(10 * 1000, "wodNSLostE0101Goto", "sendCommMessage", pPlayer, "")
end

return wodNSLostE0101Goto
