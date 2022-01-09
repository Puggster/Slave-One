local ObjectManager = require("managers.object.object_manager")

SIT = 1
STAND = 0

CorvetteHMTicketTakerLogic = ScreenPlay:new {
	numberOfActs = 1,
	npc = {},
	takerName = "CorvetteHMTicketTakerLogic",
	faction = 0,
	goodbyeString = "",
	helpMeString = "",
	nevermindString = "",
	aboutMissionString = "",
}

function CorvetteHMTicketTakerLogic:start()
	self:spawnNpc()
end

function CorvetteHMTicketTakerLogic:spawnNpc()
	local npcSpawnData = self.npc

	if not isZoneEnabled(npcSpawnData.planetName) then
		return
	end

	local pNpc = spawnMobile(npcSpawnData.planetName, npcSpawnData.npcTemplate, 1, npcSpawnData.x, npcSpawnData.z, npcSpawnData.y, npcSpawnData.direction, npcSpawnData.cellID)

	if pNpc ~= nil then
		if (npcSpawnData.position == SIT) then
			CreatureObject(pNpc):setState(STATESITTINGONCHAIR)
		end
		if (npcSpawnData.mood ~= nil and npcSpawnData.mood ~= "") then
			CreatureObject(pNpc):setMoodString(npcSpawnData.mood)
		end
	end
end

function CorvetteHMTicketTakerLogic:checkFaction(pPlayer)
	if (self.faction == FACTIONNEUTRAL) then
		return true
	end

	if (not ThemeParkLogic:isInFaction(self.faction, pPlayer) or ThemeParkLogic:isOnLeave(pPlayer) or TangibleObject(pPlayer):isChangingFactionStatus()) then
		return false
	end

	if (CreatureObject(pPlayer):isGrouped()) then
		local groupSize = CreatureObject(pPlayer):getGroupSize()

		for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(pPlayer):getGroupMember(i)
			if pMember ~= nil and (not ThemeParkLogic:isInFaction(self.faction, pMember) or ThemeParkLogic:isOnLeave(pMember) or TangibleObject(pMember):isChangingFactionStatus()) then
				return false
			end
		end
	end

	return true
end

function CorvetteHMTicketTakerLogic:validateTicket(pPlayer)
	if (pPlayer == nil) then
		return
	end

	CreatureObject(pPlayer):sendSystemMessage("@dungeon/space_dungeon:validating_ticket") -- Validating travel authorization. Please stand by...

	createEvent(5 * 1000, self.takerName, "finishValidateTicket", pPlayer, "")
end

function CorvetteHMTicketTakerLogic:finishValidateTicket(pPlayer)
	if pPlayer == nil then
		return
	end

	local factionCheck = self:checkFaction(pPlayer)

	local player = CreatureObject(pPlayer)

	local pInventory = player:getSlottedObject("inventory")
	if pInventory == nil or not factionCheck then
		player:sendSystemMessageWithTO("@dungeon/space_dungeon:no_ticket", "@dungeon/space_dungeon:corvette_" .. self:getFactionString()) -- You do not have the proper authorization to access the %TO.
		return
	end

	local result = CorellianCorvetteHM:activate(pPlayer, self:getFactionString(), "assassinate")

end

function CorvetteHMTicketTakerLogic:getFactionString()
	if self.faction == FACTIONIMPERIAL then
		return "imperial"
	elseif self.faction == FACTIONREBEL then
		return "rebel"
	else
		return "neutral"
	end
end
