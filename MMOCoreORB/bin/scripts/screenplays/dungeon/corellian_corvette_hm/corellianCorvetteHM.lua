local ObjectManager = require("managers.object.object_manager")

CorellianCorvetteHM = ScreenPlay:new {
	buildings = {
		{ faction = "neutral", buildingIds = { 4945494, 4945561, 4945628, 4945695, 4945762, 4945829, 4945896, 4945963 } },
		{ faction = "imperial", buildingIds = {  } },
		{ faction = "rebel", buildingIds = {  } }
	},

	escapePoints = {
		{ faction = "neutral", planet = "naboo", x = -45, y = -24 },
		{ faction = "imperial", planet = "naboo", x = -45, y = -20 },
		{ faction = "rebel", planet = "naboo", x = -45, y = -28 },
	},

	missionBadges = {
		imperial_destroy = 112, -- ...has been recognized as an Elite Imperial Soldier, for bravery in the call of duty, eliminating a Rebel Blockade Runner.
		imperial_rescue = 113, -- ...has been recognized for bravery in the face of danger, for rescuing Imperial Loyalists from the Rebel Menace, imprisoned on a Rebel Blockade Runner.
		imperial_assassinate = 114, -- ...has been recognized as an elite Imperial soldier for work in eliminating key Rebel personnel aboard a fully functional Rebel Blockade Runner.
		neutral_destroy = 115, -- ...has been recognized by the Hutt clan for work in destroying Corellian Corvette.
		neutral_rescue = 116, -- ...has been recognized by the Hutt clan for work in freeing our imprisoned friends aboard a Corellian Corvette.
		neutral_assassinate = 117, -- ...has been recognized by the Hutt clan for work in eliminating key personnel at the Hutt's request.
		rebel_destroy = 118, -- ...has been recognized by the Alliance as an elite soldier for work in destroying a captured Rebel Blockade Runner.
		rebel_rescue = 119, -- ...has been recognized by the Alliance as an elite soldier for work in rescuing imprisoned comrades aboard a captured Rebel Blockade Runner.
		rebel_assassinate = 120, -- ...has been recognized by the Alliance as an elite soldier for work in eliminating key Imperial personnel on a captured Rebel Blockade Runner.
	},

	lockedRooms = { "elevator57", "meetingroom38", "armorybackroom55", "officerquarters63", "officerquarters64", "officerquarters65", "bridge66" },

	electricTrapLocs = {
		{ x = 1, z = -14, y = -32 },
		{ x = 1, z = -14, y = -34 },
		{ x = 1, z = -14, y = -36 },
		{ x = 1, z = -14, y = -38 },
		{ x = 1, z = -14, y = -40 },
	},
}

registerScreenPlay("CorellianCorvetteHM", true)

function CorellianCorvetteHM:start()
	if (isZoneEnabled("dungeon3")) then
		self:initialize()
	end
end

function CorellianCorvetteHM:initialize()
	local num = 0
	for i = 1, #self.buildings, 1 do
		local building = self.buildings[i]
		for j = 1, #building.buildingIds, 1 do
			local pCorvetteHM = getSceneObject(building.buildingIds[j])
			if pCorvetteHM == nil or not SceneObject(pCorvetteHM):isBuildingObject() then
				printLuaError("CorellianCorvetteHM:initialize tried using a corvette id that was nil or not a building: " .. building.buildingIds[j])
			else
				local corvetteHMID = SceneObject(pCorvetteHM):getObjectID()
				deleteData("corvetteActive:" .. corvetteHMID)
				self:ejectAllPlayers(pCorvetteHM)
				deleteData("corvettePlayerCount:" .. corvetteHMID)
				createObserver(ENTEREDBUILDING, "CorellianCorvetteHM", "onEnterCorvette", pCorvetteHM)
				createObserver(EXITEDBUILDING, "CorellianCorvetteHM", "onExitCorvette", pCorvetteHM)
				num = num + 1
			end
		end
	end
end

function CorellianCorvetteHM:activate(pPlayer, faction, questType)
	if (not isZoneEnabled("dungeon3")) then
		CreatureObject(pPlayer):sendSystemMessage("@dungeon/space_dungeon:unable_to_find_dungeon") -- That area is currently unavailable. Please try again later.
		return false
	end

	local ids = nil
	for i = 1, #self.buildings, 1 do
		if self.buildings[i].faction == faction then
			ids = self.buildings[i].buildingIds
		end
	end

	if ids == nil then
		CreatureObject(pPlayer):sendSystemMessage("Unable to find free instance. Please try again shortly.") -- The Corellian corvette is currently out of transport range making transportation impossible.
		return false
	end

	local active = 1
	local corvetteHMID = 0
	for i = 1, #ids, 1 do
		active = readData("corvetteActive:" .. ids[i])

		if (active == 1) then
			local startTime = readData("corvetteStartTime:" .. ids[i])
			local timeLeftSecs = 3600 - (os.time() - startTime) + 120

			if (timeLeftSecs < 0) then
				local pCorvetteHM = getSceneObject(ids[i])

				if (pCorvetteHM ~= nil) then
					self:ejectAllPlayers(pCorvetteHM)
					createEvent(5000, "CorellianCorvetteHM", "doCorvetteCleanup", pCorvetteHM, "")
				end
			end
		else
			corvetteHMID = ids[i]
			break
		end
	end

	local pCorvetteHM = getSceneObject(corvetteHMID)

	if (pCorvetteHM == nil) then
		CreatureObject(pPlayer):sendSystemMessage("@dungeon/space_dungeon:corellian_corvette_travel_fail")
		printLuaError("CorellianCorvetteHM:activate unable to find hard mode corvette object with id " .. corvetteHMID)
		return false
	end

	self:startQuest(pCorvetteHM, questType)

	local playerID = SceneObject(pPlayer):getObjectID()
	writeData(playerID .. "corvetteHMID", corvetteHMID)
	writeData(corvetteHMID .. ":ownerID", playerID)
	createEvent(1000, "CorellianCorvetteHM", "transportPlayer", pPlayer, "")

	if (CreatureObject(pPlayer):isGrouped()) then
		local groupSize = CreatureObject(pPlayer):getGroupSize()

		for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(pPlayer):getGroupMember(i)
			if pMember ~= nil and pMember ~= pPlayer and CreatureObject(pPlayer):isInRangeWithObject(pMember, 50) and not SceneObject(pMember):isAiAgent() then
				self:sendAuthorizationSui(pMember, pPlayer, pCorvetteHM)
			end
		end
	end

	return true
end

function CorellianCorvetteHM:getFactionCRC(faction)
	if faction == "imperial" then
		return FACTIONIMPERIAL
	elseif faction == "rebel" then
		return FACTIONREBEL
	else
		return FACTIONNEUTRAL
	end
end

function CorellianCorvetteHM:sendAuthorizationSui(pPlayer, pLeader, pCorvetteHM)
	if (pPlayer == nil or pCorvetteHM == nil) then
		return
	end

	local corvetteHMFaction = self:getBuildingFaction(pCorvetteHM)
	local factionCRC = self:getFactionCRC(corvetteHMFaction)

	if (corvetteHMFaction ~= "neutral" and (not ThemeParkLogic:isInFaction(factionCRC, pPlayer) or ThemeParkLogic:isOnLeave(pPlayer) or TangibleObject(pPlayer):isChangingFactionStatus())) then
		return
	end

	writeData(SceneObject(pPlayer):getObjectID() .. "corvetteHMID", SceneObject(pCorvetteHM):getObjectID())

	local sui = SuiMessageBox.new("CorellianCorvetteHM", "authorizationSuiCallback")
	sui.setTargetNetworkId(SceneObject(pCorvetteHM):getObjectID())
	local corvetteName = getStringId("@dungeon/space_dungeon:corvette_" .. self:getBuildingFaction(pCorvetteHM))
	sui.setTitle("Corellian Corvette")
	sui.setPrompt(CreatureObject(pLeader):getFirstName() .. " has granted you authorization to travel to " .. corvetteName ..". Do you accept this travel offer?")
	sui.setOkButtonText("Yes")
	sui.setCancelButtonText("No")

	local pageId = sui.sendTo(pPlayer)

	createEvent(30 * 1000, "CorellianCorvetteHM", "closeAuthorizationSui", pPlayer, pageId)
end

function CorellianCorvetteHM:authorizationSuiCallback(pPlayer, pSui, eventIndex, args)
	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		deleteData(SceneObject(pPlayer):getObjectID() .. "corvetteHMID")
		return
	end

	createEvent(1000, "CorellianCorvetteHM", "transportPlayer", pPlayer, "")
end

function CorellianCorvetteHM:closeAuthorizationSui(pPlayer, pageId)
	local pCorvetteHM = self:getCorvetteObject(pPlayer)
	local playerID = SceneObject(pPlayer):getObjectID()
	local pageId = tonumber(pageId)

	if (pCorvetteHM ~= nil and SceneObject(pCorvetteHM):getObjectID() == readData(playerID .. "corvetteHMID")) then
		return
	end

	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	PlayerObject(pGhost):removeSuiBox(pageId)

	deleteData(playerID .. "corvetteHMID")
end

function CorellianCorvetteHM:lockRooms(pCorvetteHM)
	if (pCorvetteHM == nil) then
		return
	end

	local corvetteHMID = SceneObject(pCorvetteHM):getObjectID()

	for i = 1 ,#self.lockedRooms, 1 do
		local pCell = BuildingObject(pCorvetteHM):getNamedCell(self.lockedRooms[i])

		if (pCell ~= nil) then
			SceneObject(pCell):setContainerInheritPermissionsFromParent(false)
			SceneObject(pCell):setContainerDefaultDenyPermission(WALKIN)
			SceneObject(pCell):clearContainerDefaultAllowPermission(WALKIN)
		end
	end
end

function CorellianCorvetteHM:unlockRoom(pCorvetteHM, roomName)
	if (pCorvetteHM == nil) then
		return
	end

	local corvetteHMID = SceneObject(pCorvetteHM):getObjectID()

	local pCell = BuildingObject(pCorvetteHM):getNamedCell(roomName)

	if (pCell ~= nil) then
		SceneObject(pCell):clearContainerDefaultDenyPermission(WALKIN)
		SceneObject(pCell):setContainerDefaultAllowPermission(WALKIN)
		local cellID = SceneObject(pCell):getObjectID()
		BuildingObject(pCorvetteHM):broadcastSpecificCellPermissions(cellID)
	end
end

function CorellianCorvetteHM:setupSceneObjects(pCorvetteHM)
	if (pCorvetteHM == nil) then
		return
	end

	local corvetteHMID = SceneObject(pCorvetteHM):getObjectID()
	local corvetteHMFaction = self:getBuildingFaction(pCorvetteHM)

	if (readData("corvetteActive:" .. corvetteHMID) ~= 1) then
		return
	end

	for i = 1, #corvetteHMStaticSpawns, 1 do
		local spawnData = corvetteHMStaticSpawns[i]
		local pCell = BuildingObject(pCorvetteHM):getNamedCell(spawnData[5])

		if (pCell ~= nil) then
			if (spawnData[10] == nil or spawnData[10] == "" or spawnData[10] == corvetteHMFaction) then
				local pObject = spawnSceneObject("dungeon3", spawnData[1], spawnData[2], spawnData[3], spawnData[4], SceneObject(pCell):getObjectID(), math.rad(spawnData[6]))

				if (pObject == nil) then
					printLuaError("CorellianCorvetteHM:setupSceneObjects unable to spawn scene object " .. spawnData[1] .. " for corvette ID " .. corvetteHMID)
				else
					if (spawnData[7] ~= nil and spawnData[7] ~= "") then
						SceneObject(pObject):setCustomObjectName(spawnData[7])
					end

					if (spawnData[8] ~= nil and spawnData[8] ~= "") then
						local extraData = spawnData[9]

						if (extraData == nil) then
							extraData = ""
						end

						createEvent(100, "CorellianCorvetteHM", spawnData[8], pObject, extraData)
					end
				end
			end
		else
			printLuaError("Unable to grab cell object for cell named " .. spawnData[5] .. " when trying to spawn object " .. spawnData[1] .. ".")
		end
	end
end

function CorellianCorvetteHM:spawnNpcs(pCorvetteHM)
	if (pCorvetteHM == nil) then
		return
	end

	local corvetteHMID = SceneObject(pCorvetteHM):getObjectID()
	local corvetteHMFaction = self:getBuildingFaction(pCorvetteHM)

	if (readData("corvetteActive:" .. corvetteHMID) ~= 1) then
		return
	end

	local spawnTable = corvetteHMNeutralSpawns

	if (corvetteHMFaction == "imperial") then
		spawnTable = corvetteHMImperialSpawns
	elseif (corvetteHMFaction == "rebel") then
		spawnTable = corvetteHMRebelSpawns
	end

	for i = 1, #spawnTable, 1 do
		local spawnData = spawnTable[i]
		local pCell = BuildingObject(pCorvetteHM):getNamedCell(spawnData[6])

		if (pCell ~= nil) then
			local cellID = SceneObject(pCell):getObjectID()
			local pMobile = spawnMobile("dungeon3", spawnData[1], 0, spawnData[2], spawnData[3], spawnData[4], spawnData[5], cellID)

			if (pMobile == nil) then
				printLuaError("CorellianCorvetteHM:setupSceneObjects unable to spawn mobile " .. spawnData[1] .. " for " .. corvetteHMFaction .. " corvette ID " .. corvetteHMID)
			else
				CreatureObject(pMobile):setOptionBit(IGNORE_FACTION_STANDING)
				if (spawnData[7] ~= nil and spawnData[7] ~= "") then
					createEvent(100, "CorellianCorvetteHM", spawnData[7], pMobile, "")
				end
			end
		else
			printLuaError("Unable to grab cell object for cell named " .. spawnData[6] .. " in corvette ID " .. corvetteHMID .. " when trying to spawn " .. spawnData[1])
		end
	end
end

function CorellianCorvetteHM:setupAssassinationTarget(pTarget)
	if (pTarget == nil) then
		return
	end

	local pCorvetteHM = self:getCorvetteObject(pTarget)

	if (pCorvetteHM == nil) then
		return
	end

	local corvetteHMID = SceneObject(pCorvetteHM):getObjectID()

	if (readData("corvetteActive:" .. corvetteHMID) ~= 1) then
		return
	end

	createObserver(OBJECTDESTRUCTION, "CorellianCorvetteHM", "onAssassinationTargetKilled", pTarget)
end

function CorellianCorvetteHM:onAssassinationTargetKilled(pTarget, pKiller)
	if (pTarget == nil or pKiller == nil) then
		return 1
	end

	local pCorvetteHM = self:getCorvetteObject(pTarget)

	if (pCorvetteHM == nil) then
		return 1
	end

	local questType = readStringData("corvetteQuestType:" .. SceneObject(pCorvetteHM):getObjectID())

	if (questType ~= "assassinate") then
		return 1
	end

	CorellianCorvetteHM:handleQuestSuccess(pCorvetteHM)

	return 1
end

function CorellianCorvetteHM:setupBrokenDroid(pDroid)
	if (pDroid == nil) then
		return
	end

	local pCorvetteHM = self:getCorvetteObject(pDroid)

	if (pCorvetteHM == nil) then
		return
	end

	local corvetteHMID = SceneObject(pCorvetteHM):getObjectID()

	if (readData("corvetteActive:" .. corvetteHMID) ~= 1) then
		return
	end

	local pCell = BuildingObject(pCorvetteHM):getNamedCell("thrustersubroom28")

	if (pCell == nil) then
		return
	end

	local cellId = SceneObject(pCell):getObjectID()

	local pH3P0 = spawnMobile("dungeon3", "protocol_droid_h6p0", 0, SceneObject(pDroid):getPositionX() + 1, SceneObject(pDroid):getPositionZ(), SceneObject(pDroid):getPositionY() + 2, 0, cellId)

	if (pH3P0 == nil) then
		return
	end

	writeData(corvetteHMID .. ":H3P0ID", SceneObject(pH3P0):getObjectID())

	for i = 1, #self.electricTrapLocs, 1 do
		local trapLoc = self.electricTrapLocs[i]
		local pTrap = spawnSceneObject("dungeon3", "object/static/particle/pt_poi_electricity_2x2.iff", trapLoc.x, trapLoc.z, trapLoc.y, cellId, 1, 0, 0, 0)

		if pTrap ~= nil then
			local trapID = SceneObject(pTrap):getObjectID()
			writeData(corvetteHMID .. ":electricTrap" .. i, trapID)
			local pTrapArea = spawnActiveArea("dungeon3", "object/active_area.iff", SceneObject(pTrap):getWorldPositionX(), SceneObject(pTrap):getWorldPositionZ(), SceneObject(pTrap):getWorldPositionY(), 4, cellId)

			if pTrapArea ~= nil then
				writeData(trapID .. ":trapArea", SceneObject(pTrapArea):getObjectID())
				createObserver(ENTEREDAREA, "CorellianCorvetteHM", "notifyTrapAreaEntered", pTrapArea)
			end
		end
	end

	createObserver(DESTINATIONREACHED, "CorellianCorvetteHM", "repairDroidDestinationReached", pDroid)
	SceneObject(pDroid):setContainerComponent("corvetteBrokenDroidContainerComponent")

	AiAgent(pDroid):setAiTemplate("idlewait") -- Don't move unless patrol point is added to list
	AiAgent(pDroid):setFollowState(4) -- Patrolling

	writeData(corvetteHMID .. ":electricTrapEnabled", 1)
end

function CorellianCorvetteHM:startRepairDroidMovement(pDroid)
	local pCorvetteHM = self:getCorvetteObject(pDroid)

	if (pCorvetteHM == nil) then
		return
	end

	local pCell = BuildingObject(pCorvetteHM):getNamedCell("thrustersubroom28")

	if (pCell == nil) then
		return
	end

	local cellId = SceneObject(pCell):getObjectID()

	AiAgent(pDroid):stopWaiting()
	AiAgent(pDroid):setWait(0)
	AiAgent(pDroid):setNextPosition(-2.6, -14, -36.35, cellId)
	AiAgent(pDroid):executeBehavior()
end

function CorellianCorvetteHM:repairDroidDestinationReached(pDroid)
	if (pDroid == nil) then
		return 1
	end

	createEvent(3 * 1000, "CorellianCorvetteHM", "startRepairDroidRepairing", pDroid, "")

	return 1
end

function CorellianCorvetteHM:startRepairDroidRepairing(pDroid)
	local pCorvetteHM = self:getCorvetteObject(pDroid)

	if (pCorvetteHM == nil) then
		return 1
	end

	local corvetteHMID = BuildingObject(pCorvetteHM):getObjectID()
	CreatureObject(pDroid):doAnimation("sp_10")

	createEvent(3 * 1000, "CorellianCorvetteHM", "removeElectricTrap", pCorvetteHM, "")
end

function CorellianCorvetteHM:removeElectricTrap(pCorvetteHM)
	if (pCorvetteHM == nil) then
		return
	end

	local corvetteHMID = SceneObject(pCorvetteHM):getObjectID()

	for i = 1, #self.electricTrapLocs, 1 do
		local trapID = readData(corvetteHMID .. ":electricTrap" .. i)
		local areaID = readData(trapID .. ":trapArea")

		local pArea = getSceneObject(areaID)

		if (pArea ~= nil) then
			SceneObject(pArea):destroyObjectFromWorld()
		end

		local pTrap = getSceneObject(trapID)

		if (pTrap ~= nil) then
			SceneObject(pTrap):destroyObjectFromWorld()
		end

		deleteData(trapID .. ":trapArea")
		deleteData(corvetteHMID .. ":electricTrap" .. i)
	end

	local H3POID = readData(corvetteHMID .. ":H3P0ID")
	local pH3PO = getSceneObject(H3POID)

	if (pH3PO ~= nil) then
		spatialChat(pH3PO, "@dungeon/corvette:pdroid_congrats")
		writeData(corvetteHMID.. ":repairDroidComplete", 1)
	end
end

function CorellianCorvetteHM:notifyTrapAreaEntered(pActiveArea, pMovingObject)
	if (pActiveArea == nil) then
		return 1
	end

	if (pMovingObject == nil or not SceneObject(pMovingObject):isCreatureObject()) then
		return 0
	end

	if (SceneObject(pMovingObject):isAiAgent() and not AiAgent(pMovingObject):isPet()) then
		return 0
	end

	local pCorvetteHM = self:getCorvetteObject(pMovingObject)

	if (pCorvetteHM == nil) then
		return 1
	end

	if (readData(SceneObject(pCorvetteHM):getObjectID() .. ":electricTrapEnabled") ~= 1) then
		return 0
	end

	CreatureObject(pMovingObject):inflictDamage(pMovingObject, 0, getRandomNumber(15000,20000), 1)
	CreatureObject(pMovingObject):sendSystemMessage("@quest/corvetter_trap:shocked") --You feel electricity coursing through your body!

	return 0
end

function CorellianCorvetteHM:setupPrisoner(pPrisoner)
	local pCorvetteHM = self:getCorvetteObject(pPrisoner)

	if (pCorvetteHM == nil) then
		return
	end

	createObserver(DESTINATIONREACHED, "CorellianCorvetteHM", "prisonerDestinationReached", pPrisoner)
	AiAgent(pPrisoner):setAiTemplate("idlewait") -- Don't move unless patrol point is added to list
	AiAgent(pPrisoner):setFollowState(4) -- Patrolling

	if (SceneObject(pPrisoner):getObjectName() == "prisoner") then
		CreatureObject(pPrisoner):setOptionBit(CONVERSABLE)
		local corvetteHMFaction = self:getBuildingFaction(pCorvetteHM)

		if (corvetteHMFaction == "neutral") then
			AiAgent(pPrisoner):setConvoTemplate("corvetteNeutralPrisonerConvoTemplate")
		elseif (corvetteHMFaction == "imperial") then
			AiAgent(pPrisoner):setConvoTemplate("corvetteImperialPrisonerConvoTemplate")
		elseif (corvetteHMFaction == "rebel") then
			AiAgent(pPrisoner):setConvoTemplate("corvetteRebelPrisonerConvoTemplate")
		end
	end
end

function CorellianCorvetteHM:doPrisonerEscape(pPrisoner)
	local pCorvetteHM = self:getCorvetteObject(pPrisoner)

	if (pCorvetteHM == nil) then
		return
	end

	local pCell = BuildingObject(pCorvetteHM):getNamedCell("elevator57")

	if (pCell == nil) then
		return
	end

	createEvent(60 * 1000, "CorellianCorvetteHM", "removePrisoner", pPrisoner, "")

	local cellId = SceneObject(pCell):getObjectID()

	AiAgent(pPrisoner):stopWaiting()
	AiAgent(pPrisoner):setWait(0)
	AiAgent(pPrisoner):setNextPosition(-18.1, 0, 117.7, cellId)
	AiAgent(pPrisoner):executeBehavior()
end

function CorellianCorvetteHM:prisonerDestinationReached(pPrisoner)
	if (pPrisoner == nil) then
		return 1
	end

	createEvent(2 * 1000, "CorellianCorvetteHM", "removePrisoner", pPrisoner, "")

	return 1
end

function CorellianCorvetteHM:removePrisoner(pPrisoner)
	if (pPrisoner == nil) then
		return
	end

	deleteData(SceneObject(pPrisoner):getObjectID() .. ":alreadyRescued")
	SceneObject(pPrisoner):destroyObjectFromWorld()
end

function CorellianCorvetteHM:setupRoomPanel(pPanel, room)
	if (pPanel == nil or room == "") then
		return
	end

	SceneObject(pPanel):setObjectMenuComponent("CorvetteRoomPanelMenuComponent")
	createObserver(OBJECTREMOVEDFROMZONE, "CorellianCorvetteHM", "notifyRoomPanelRemovedFromZone", pPanel)
	writeStringData(SceneObject(pPanel):getObjectID() .. ":panelRoom", room)
end

function CorellianCorvetteHM:notifyRoomPanelRemovedFromZone(pPanel)
	if (pPanel == nil) then
		return 1
	end

	local panelID = SceneObject(pPanel):getObjectID()

	deleteStringData(panelID .. ":panelRoom")
	deleteData(panelID .. ":roomUnlocked")

	return 1
end

function CorellianCorvetteHM:setupKeypad(pKeypad, room)
	if (pKeypad == nil or room == "") then
		printLuaError("Keypad Nil" .. corvetteHMID)
		return
	end

	SceneObject(pKeypad):setObjectMenuComponent("CorvetteHMKeypadMenuComponent")
	createObserver(OBJECTREMOVEDFROMZONE, "CorellianCorvetteHM", "notifyKeypadRemovedFromZone", pKeypad)
	writeStringData(SceneObject(pKeypad):getObjectID() .. ":keypadRoom", room)
end

function CorellianCorvetteHM:notifyKeypadRemovedFromZone(pKeypad)
	if (pKeypad == nil) then
		return 1
	end

	local keypadID = SceneObject(pKeypad):getObjectID()

	deleteStringData(keypadID .. ":keypadRoom")

	return 1
end

function CorellianCorvetteHM:setupDestroyTerminal(pTerminal, type)
	if (pTerminal == nil or type == "") then
		return
	end

	SceneObject(pTerminal):setObjectMenuComponent("CorvetteDestroyTerminalMenuComponent")
	createObserver(OBJECTREMOVEDFROMZONE, "CorellianCorvetteHM", "notifyDestroyTerminalRemovedFromZone", pTerminal)
	writeStringData(SceneObject(pTerminal):getObjectID() .. ":terminalType", type)
end

function CorellianCorvetteHM:notifyDestroyTerminalRemovedFromZone(pTerminal)
	if (pTerminal == nil) then
		return 1
	end

	local keypadID = SceneObject(pTerminal):getObjectID()

	deleteStringData(keypadID .. ":terminalType")

	return 1
end

function CorellianCorvetteHM:setupComputerObject(pComputer, label)
	if (pComputer == nil or label == "") then
		return
	end

	SceneObject(pComputer):setObjectMenuComponent("CorvetteHMComputerMenuComponent")
	createObserver(OBJECTREMOVEDFROMZONE, "CorellianCorvetteHM", "notifyComputerRemovedFromZone", pComputer)
	writeStringData(SceneObject(pComputer):getObjectID() .. ":computerLabel", label)
end

function CorellianCorvetteHM:spawnComputerEnemies(pCorvetteHM, pComputer)
	if (pCorvetteHM == nil or pComputer == nil) then
		return
	end

	local corvetteHMFaction = self:getBuildingFaction(pCorvetteHM)
	local spawnTemplate

	if (corvetteHMFaction == "neutral") then
		spawnTemplate = "corsec_super_battle_droid"
	elseif (corvetteHMFaction == "imperial") then
		spawnTemplate = "rebel_super_battle_droid"
	elseif (corvetteHMFaction == "rebel") then
		spawnTemplate = "imperial_super_battle_droid"
	else
		return
	end

	local cellID = SceneObject(pComputer):getParentID()

	-- TODO: pick random spot in room for spawn loc once we can find random good room location
	local pMobile = spawnMobile("dungeon3", spawnTemplate, 0, SceneObject(pComputer):getPositionX(), SceneObject(pComputer):getPositionZ(), SceneObject(pComputer):getPositionY(), 0, SceneObject(pComputer):getParentID())

end

function CorellianCorvetteHM:notifyComputerRemovedFromZone(pComputer)
	if (pComputer == nil) then
		return 1
	end

	local computerID = SceneObject(pComputer):getObjectID()

	deleteStringData(computerID .. ":computerLabel")
	deleteData(computerID .. ":accessCode")
	deleteData(computerID .. ":spawnedEnemies")
	deleteData(computerID .. ":terminalRebooted")
	deleteData(computerID .. ":sliceAttempted")

	return 1
end

function CorellianCorvetteHM:setupEscapePod(pPod)
	if (pPod == nil) then
		return
	end

	createObserver(OBJECTRADIALUSED, "CorellianCorvetteHM", "notifyPodRadialUsed", pPod)
	createObserver(OBJECTREMOVEDFROMZONE, "CorellianCorvetteHM", "notifyPodRemovedFromZone", pPod)

	local pActiveArea = spawnActiveArea("dungeon3", "object/active_area.iff", SceneObject(pPod):getWorldPositionX(), SceneObject(pPod):getWorldPositionZ(), SceneObject(pPod):getWorldPositionY(), 3, SceneObject(pPod):getParentID())

	if pActiveArea ~= nil then
		createObserver(ENTEREDAREA, "CorellianCorvetteHM", "notifyEnteredEscapePodArea", pActiveArea)
		writeData(SceneObject(pPod):getObjectID() .. ":areaID", SceneObject(pActiveArea):getObjectID())
	end
end

function CorellianCorvetteHM:notifyPodRemovedFromZone(pPod)
	if (pPod == nil) then
		return 1
	end

	local podID = SceneObject(pPod):getObjectID()
	local areaID = readData(podID .. ":areaID")

	local pArea = getSceneObject(areaID)

	if (pArea ~= nil) then
		SceneObject(pArea):destroyObjectFromWorld()
	end

	deleteData(podID .. ":areaID")

	return 1
end

function CorellianCorvetteHM:notifyPodRadialUsed(pPod, pPlayer, radialSelected)
	if (pPod == nil) then
		return 1
	end

	if (pPlayer == nil or not SceneObject(pPlayer):isPlayerCreature() or not CreatureObject(pPlayer):isInRangeWithObject(pPod, 4)) then
		return 0
	end

	if (radialSelected == 20) then
		createEvent(2 * 1000, "CorellianCorvetteHM", "ejectPlayer", pPlayer,"")
		return 0
	end

	return 0
end

function CorellianCorvetteHM:notifyEnteredEscapePodArea(pActiveArea, pPlayer)
	if (pActiveArea == nil) then
		return 1
	end

	if (pPlayer == nil or not SceneObject(pPlayer):isPlayerCreature()) then
		return 0
	end

	CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:escape_pod_message")

	return 0
end

function CorellianCorvetteHM:setupLootCrate(pCrate, type)
	if (pCrate == nil) then
		return
	end

	local pCorvetteHM = self:getCorvetteObject(pCrate)

	if (pCorvetteHM == nil) then
		return
	end

	local faction = self:getBuildingFaction(pCorvetteHM)

	if (type == "r2") then
		createLoot(pCrate, "r2droid_loot", 1, false)
	elseif (type == "disk") then
		createLoot(pCrate, "disk_loot", 1, false)
	else
		createLoot(pCrate, faction .. "_corvette_loot", 300, false)
	end

	SceneObject(pCrate):setContainerInheritPermissionsFromParent(false)
	SceneObject(pCrate):setContainerDefaultDenyPermission(MOVEIN)
	SceneObject(pCrate):setContainerDefaultAllowPermission(OPEN + MOVEOUT)

	writeStringData(SceneObject(pCrate):getObjectID() .. ":crateType", type)
	createObserver(OBJECTREMOVEDFROMZONE, "CorellianCorvetteHM", "notifyLootCrateRemovedFromZone", pCrate)
	SceneObject(pCrate):setContainerComponent("corvetteLootCrateContainerComponent")
end

function CorellianCorvetteHM:onCrateLooted(pCrate)
	if (pCrate == nil) then
		return
	end

	local pCorvetteHM = self:getCorvetteObject(pCrate)

	if (pCorvetteHM == nil) then
		return
	end

	local crateID = SceneObject(pCrate):getObjectID()
	local crateType = readStringData(crateID .. ":crateType")

	if (crateType == "r2") then
		createEvent(600 * 1000, "CorellianCorvetteHM", "setupLootCrate", pCrate, "r2")
	elseif (crateType ~= "disk" and readData(crateID .. ":crateLooted") ~= 1) then
		writeData(crateID .. ":crateLooted", 1)
		local faction = self:getBuildingFaction(pCorvetteHM)
		local spawnTemplate

		if (faction == "neutral") then
			spawnTemplate = "corsec_super_battle_droid"
		elseif (faction == "imperial") then
			spawnTemplate = "rebel_super_battle_droid"
		elseif (faction == "rebel") then
			spawnTemplate =  "imperial_super_battle_droid"
		end
		-- TODO: pick random spot in room for spawn loc once we can find random good room location
		local pMobile = spawnMobile("dungeon3", spawnTemplate, 0, SceneObject(pCrate):getPositionX(), SceneObject(pCrate):getPositionZ(), SceneObject(pCrate):getPositionY(), 0, SceneObject(pCrate):getParentID())
	end

	writeData(crateID .. ":crateLooted", 1)
end

function CorellianCorvetteHM:notifyLootCrateRemovedFromZone(pCrate)
	if (pCrate == nil) then
		return 1
	end

	local crateID = SceneObject(pCrate):getObjectID()

	deleteStringData(crateID .. ":crateType")
	deleteData(crateID .. ":crateLooted")

	return 1
end

function CorellianCorvetteHM:transportPlayer(pPlayer)
	if pPlayer == nil then
		return
	end

	-- Make sure the player had no data left over from a previous corvette
	self:doPlayerCleanup(pPlayer)

	local corvetteHMID = readData(SceneObject(pPlayer):getObjectID() .. "corvetteHMID")

	local pCorvetteHM = getSceneObject(corvetteHMID)

	if (pCorvetteHM == nil) then
		printLuaError("CorellianCorvetteHM:transportPlayer nil corvette object using corvette id " .. corvetteHMID)
		return
	end

	local corvetteHMFaction = self:getBuildingFaction(pCorvetteHM)
	local factionCRC = self:getFactionCRC(corvetteHMFaction)

	if (corvetteHMFaction ~= "neutral" and (not ThemeParkLogic:isInFaction(factionCRC, pPlayer) or ThemeParkLogic:isOnLeave(pPlayer) or TangibleObject(pPlayer):isChangingFactionStatus())) then
		return
	end

	local pCell = BuildingObject(pCorvetteHM):getCell(1)

	if (pCell == nil) then
		return
	end

	local cellID = SceneObject(pCell):getObjectID()
	local player = CreatureObject(pPlayer)

	if (player:isRidingMount()) then
		player:dismount()
	end
	SceneObject(pPlayer):switchZone("dungeon3", -42.9, 0, 0.1, cellID)
end

function CorellianCorvetteHM:startQuest(pCorvetteHM, questType)
	local dungeonID = self:getNewDungeonID()
	local corvetteHMID = SceneObject(pCorvetteHM):getObjectID()
	writeData("corvetteDungeonID:" .. corvetteHMID, dungeonID)
	writeData("corvetteActive:" .. corvetteHMID, 1)
	writeData("corvetteStartTime:" .. corvetteHMID, os.time())
	writeStringData("corvetteQuestType:" .. corvetteHMID, questType)
	createEvent(5 * 60 * 1000, "CorellianCorvetteHM", "handleCorvetteTimer", pCorvetteHM, "")

	self:setupSceneObjects(pCorvetteHM)
	self:spawnNpcs(pCorvetteHM)
	self:lockRooms(pCorvetteHM)
end

function CorellianCorvetteHM:getBuildingFaction(pCorvetteHM)
	local templatePath = SceneObject(pCorvetteHM):getTemplateObjectPath()
	if string.find(templatePath, "imperial") ~= nil then
		return "imperial"
	elseif string.find(templatePath, "rebel") ~= nil then
		return "rebel"
	else
		return "neutral"
	end
end

function CorellianCorvetteHM:onEnterCorvette(pCorvetteHM, pPlayer)
	if not SceneObject(pPlayer):isPlayerCreature() then
		return 0
	end

	local active = readData("corvetteActive:" .. SceneObject(pCorvetteHM):getObjectID())
	if active ~= 1 then
		createEvent(10 * 1000, "CorellianCorvetteHM", "handleNotAuthorized", pPlayer, "")
		return 0
	end

	local playerCount = readData("corvettePlayerCount:" .. SceneObject(pCorvetteHM):getObjectID())

	writeData("corvettePlayerCount:" .. SceneObject(pCorvetteHM):getObjectID(), playerCount + 1)

	if playerCount > 10 then
		createEvent(10 * 1000, "CorellianCorvetteHM", "handleTooMany", pPlayer, "")
		return 0
	end

	return 0
end

function CorellianCorvetteHM:onExitCorvette(pCorvetteHM, pPlayer)
	if not SceneObject(pPlayer):isPlayerCreature() then
		return 0
	end

	local playerCount = readData("corvettePlayerCount:" .. SceneObject(pCorvetteHM):getObjectID())
	writeData("corvettePlayerCount:" .. SceneObject(pCorvetteHM):getObjectID(), playerCount - 1)

	return 0
end

function CorellianCorvetteHM:handleNotAuthorized(pPlayer)
	CreatureObject(pPlayer):sendSystemMessage("@dungeon/space_dungeon:not_authorized") -- You do not have the proper authorization to be in this area.
	createEvent(2 * 1000, "CorellianCorvetteHM", "ejectPlayer", pPlayer, "")
end

function CorellianCorvetteHM:handleTooMany(pPlayer)
	CreatureObject(pPlayer):sendSystemMessage("@dungeon/space_dungeon:no_room_remaining") -- There are too many people in this area. Return transportation initiated.
	createEvent(2 * 1000, "CorellianCorvetteHM", "ejectPlayer", pPlayer, "")
end

function CorellianCorvetteHM:handleCorvetteTimer(pCorvetteHM)
	local startTime = readData("corvetteStartTime:" .. SceneObject(pCorvetteHM):getObjectID())
	local timeLeftSecs = 3600 - (os.time() - startTime)
	local timeLeft = math.floor(timeLeftSecs / 60)

	if (timeLeft > 10) then
		self:broadcastToPlayers(pCorvetteHM, "@dungeon/corvette:timer_" .. timeLeft)
		createEvent(5 * 60 * 1000, "CorellianCorvetteHM", "handleCorvetteTimer", pCorvetteHM, "")
	elseif (timeLeft >= 3) then
		self:broadcastToPlayers(pCorvetteHM, "@dungeon/corvette:timer_" .. timeLeft)
		createEvent(60 * 1000, "CorellianCorvetteHM", "handleCorvetteTimer", pCorvetteHM, "")
	elseif (timeLeft >= 2) then
		self:broadcastToPlayers(pCorvetteHM, "@dungeon/corvette:timer_" .. timeLeft)
		createEvent(30 * 1000, "CorellianCorvetteHM", "handleCorvetteTimer", pCorvetteHM, "")
	elseif (timeLeftSecs >= 90) then
		self:broadcastToPlayers(pCorvetteHM, "@dungeon/corvette:timer_90s")
		createEvent(30 * 1000, "CorellianCorvetteHM", "handleCorvetteTimer", pCorvetteHM, "")
	elseif (timeLeftSecs >= 60) then
		self:broadcastToPlayers(pCorvetteHM, "@dungeon/corvette:timer_1")
		createEvent(30 * 1000, "CorellianCorvetteHM", "handleCorvetteTimer", pCorvetteHM, "")
	elseif (timeLeftSecs >= 30) then
		self:broadcastToPlayers(pCorvetteHM, "@dungeon/corvette:timer_30s")
		createEvent(20 * 1000, "CorellianCorvetteHM", "handleCorvetteTimer", pCorvetteHM, "")
	elseif (timeLeftSecs >= 10) then
		self:broadcastToPlayers(pCorvetteHM, "@dungeon/corvette:timer_10s")
		createEvent(10 * 1000, "CorellianCorvetteHM", "handleCorvetteTimer", pCorvetteHM, "")
	else
		self:handleQuestFailure(pCorvetteHM)
	end
end

function CorellianCorvetteHM:getCorvetteObject(pPlayer)
	if (pPlayer == nil) then
		return nil
	end

	local pCell = SceneObject(pPlayer):getParent()

	if (pCell == nil) then
		return nil
	end

	return SceneObject(pCell):getParent()
end

function CorellianCorvetteHM:handleQuestFailure(pCorvetteHM)
	self:ejectAllPlayers(pCorvetteHM)
	createEvent(5000, "CorellianCorvetteHM", "doCorvetteCleanup", pCorvetteHM, "")
end

function CorellianCorvetteHM:handleQuestSuccess(pCorvetteHM)
	self:broadcastToPlayers(pCorvetteHM, "@dungeon/corvette:escape_pods") -- You have completed your assignment! Make your way to the escape pods before time expires and get off this ship!
	self:writeDataToGroup(pCorvetteHM, ":corvetteMissionComplete", 1)
	self:giveBadgeToGroup(pCorvetteHM)
end

function CorellianCorvetteHM:giveBadgeToGroup(pCorvetteHM)
	local corvetteHMFaction = self:getBuildingFaction(pCorvetteHM)
	local questType = readStringData("corvetteQuestType:" .. SceneObject(pCorvetteHM):getObjectID())
	local missionType = corvetteHMFaction .. "_" .. questType
	local badgeNum = self.missionBadges[missionType]

	if (badgeNum == nil) then
		printLuaError("Invalid mission type " .. missionType .. " trying to get Corellian Corvette badge.")
		return
	end

	for i = 1, 66, 1 do
		local pCell = BuildingObject(pCorvetteHM):getCell(i)

		if (pCell ~= nil) then
			for j = 1, SceneObject(pCell):getContainerObjectsSize(), 1 do
				local pObject = SceneObject(pCell):getContainerObject(j - 1)
				if pObject ~= nil and SceneObject(pObject):isPlayerCreature() then
					local pGhost = CreatureObject(pObject):getPlayerObject()

					if (pGhost ~= nil and not PlayerObject(pGhost):hasBadge(badgeNum)) then
						PlayerObject(pGhost):awardBadge(badgeNum)
					end
				end
			end
		end
	end
end

function CorellianCorvetteHM:broadcastToPlayers(pCorvetteHM, message)
	for i = 1, 66, 1 do
		local pCell = BuildingObject(pCorvetteHM):getCell(i)

		if (pCell ~= nil) then
			for j = 1, SceneObject(pCell):getContainerObjectsSize(), 1 do
				local pObject = SceneObject(pCell):getContainerObject(j - 1)
				if SceneObject(pObject):isPlayerCreature() then
					CreatureObject(pObject):sendSystemMessage(message)
				end
			end
		end
	end
end

function CorellianCorvetteHM:ejectAllPlayers(pCorvetteHM)
	local playersToEject = {}
	for i = 1, 66, 1 do
		local pCell = BuildingObject(pCorvetteHM):getCell(i)

		if (pCell ~= nil) then
			for j = 1, SceneObject(pCell):getContainerObjectsSize(), 1 do
				local pObject = SceneObject(pCell):getContainerObject(j - 1)
				if pObject ~= nil and SceneObject(pObject):isPlayerCreature() then
					table.insert(playersToEject, pObject)
				end
			end
		end
	end

	for i = 1, #playersToEject, 1 do
		local pObject = playersToEject[i]
		createEvent(1000, "CorellianCorvetteHM", "ejectPlayer", pObject, "")
	end
end

function CorellianCorvetteHM:writeDataToGroup(pCorvetteHM, key, data)
	for i = 1, 66, 1 do
		local pCell = BuildingObject(pCorvetteHM):getCell(i)

		if (pCell ~= nil) then
			for j = 1, SceneObject(pCell):getContainerObjectsSize(), 1 do
				local pObject = SceneObject(pCell):getContainerObject(j - 1)
				if pObject ~= nil and SceneObject(pObject):isPlayerCreature() then
					writeData(SceneObject(pObject):getObjectID() .. key, data)
				end
			end
		end
	end
end

function CorellianCorvetteHM:readDataFromGroup(pCorvetteHM, key)
	for i = 1, 66, 1 do
		local pCell = BuildingObject(pCorvetteHM):getCell(i)

		if (pCell ~= nil) then
			for j = 1, SceneObject(pCell):getContainerObjectsSize(), 1 do
				local pObject = SceneObject(pCell):getContainerObject(j - 1)

				if pObject ~= nil and SceneObject(pObject):isPlayerCreature() then
					local data = readData(SceneObject(pObject):getObjectID() .. key)
					if (data ~= 0) then
						return data
					end
				end
			end
		end
	end

	return 0
end

function CorellianCorvetteHM:increaseGroupFactionStanding(pCorvetteHM, faction, points)
	for i = 1, 66, 1 do
		local pCell = BuildingObject(pCorvetteHM):getCell(i)

		if (pCell ~= nil) then
			for j = 1, SceneObject(pCell):getContainerObjectsSize(), 1 do
				local pObject = SceneObject(pCell):getContainerObject(j - 1)

				if pObject ~= nil and SceneObject(pObject):isPlayerCreature() then
					local pGhost = CreatureObject(pObject):getPlayerObject()

					if (pGhost ~= nil) then
						PlayerObject(pGhost):increaseFactionStanding(faction, points)
					end
				end
			end
		end
	end
end

function CorellianCorvetteHM:checkSlicingSkill(pPlayer)
	if (pPlayer == nil) then
		return 0
	end

	local slicingSkill = 0

	if (not CreatureObject(pPlayer):hasSkill("combat_smuggler_novice")) then
		return slicingSkill
	end

	slicingSkill = 1

	for i = 1, 4, 1 do
		if (CreatureObject(pPlayer):hasSkill("combat_smuggler_slicing_0" .. i)) then
			slicingSkill = slicingSkill + 1
		end
	end

	if (CreatureObject(pPlayer):hasSkill("combat_smuggler_slicing_master")) then
		slicingSkill = slicingSkill + 1;
	end

	return slicingSkill;
end

function CorellianCorvetteHM:ejectPlayer(pPlayer)
	if pPlayer == nil then
		return
	end

	local point = nil

	local pParent = SceneObject(pPlayer):getParent()

	if (pParent == nil) then
		return
	end

	local pCorvetteHM = SceneObject(pParent):getParent()

	if pCorvetteHM == nil or not SceneObject(pCorvetteHM):isBuildingObject() then
		printLuaError("CorellianCorvetteHM:ejectPlayer unable to find corvette object")
		return
	end

	local faction = self:getBuildingFaction(pCorvetteHM)

	for i = 1, #self.escapePoints, 1 do
		if self.escapePoints[i].faction == faction then
			point = self.escapePoints[i]
		end
	end

	if point == nil then
		printLuaError("CorellianCorvetteHM:ejectPlayer was unable to grab an escape point for faction: " .. faction)
		return
	end

	local playerID = SceneObject(pPlayer):getObjectID()
	local ownerID = readData(SceneObject(pCorvetteHM):getObjectID() .. ":ownerID")

	if (readData(playerID .. ":corvetteMissionComplete") == 1) then
		local questType = readStringData("corvetteQuestType:" .. SceneObject(pCorvetteHM):getObjectID())
		local missionType = faction .. "_" .. questType
		writeData(playerID .. ":corvetteComplete:" .. missionType, 1)
	end

	if (playerID == ownerID) then
		if (readData(playerID .. ":corvetteMissionComplete") == 1) then
			setQuestStatus(playerID .. ":activeCorvetteStep", "3")
			CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:reward") -- You have done well. Return to the person who gave you this assignment and receive your reward.
			deleteData(playerID .. ":corvetteMissionComplete")
		else
			removeQuestStatus(playerID .. ":activeCorvetteQuest")
			removeQuestStatus(playerID .. ":activeCorvetteStep")
			removeQuestStatus(playerID .. ":activeCorvetteQuestType")
		end
	end

	if (isZoneEnabled(point.planet)) then
		SceneObject(pPlayer):switchZone(point.planet, point.x, 0, point.y, 1692104)
	else
		printLuaError("CorellianCorvetteHM:ejectPlayer attempted to eject a player to a zone that was not enabled.")
	end

	self:doPlayerCleanup(pPlayer)
end

function CorellianCorvetteHM:doPlayerCleanup(pPlayer)
	if (pPlayer == nil) then
		return
	end

	local playerID = SceneObject(pPlayer):getObjectID()

	deleteData(playerID .. ":code:armorybackroom55")
	deleteData(playerID .. ":code:bridge66")
	deleteData(playerID .. ":code:officerquarters63")
	deleteData(playerID .. ":code:officerquarters64")
	deleteData(playerID .. ":code:officerquarters65")
	deleteData(playerID .. ":unlocked:elevator57")
	deleteData(playerID .. ":unlocked:meetingroom38")

	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (pInventory ~= nil) then
		local pItem = getContainerObjectByTemplate(pInventory, "object/tangible/loot/dungeon/corellian_corvette/bootdisk.iff", true)

		if (pItem ~= nil) then
			SceneObject(pItem):destroyObjectFromWorld()
			SceneObject(pItem):destroyObjectFromDatabase()
		end

		pItem = getContainerObjectByTemplate(pInventory, "object/tangible/dungeon/droid_maint_module.iff", true)

		if (pItem ~= nil) then
			SceneObject(pItem):destroyObjectFromWorld()
			SceneObject(pItem):destroyObjectFromDatabase()
		end
	end
end

function CorellianCorvetteHM:doCorvetteCleanup(pCorvetteHM)
	if (pCorvetteHM == nil) then
		return
	end

	local corvetteHMID = SceneObject(pCorvetteHM):getObjectID()

	for i = 1, #self.electricTrapLocs, 1 do
		local trapID = readData(corvetteHMID .. ":electricTrap" .. i)
		local areaID = readData(trapID .. ":trapArea")

		local pArea = getSceneObject(areaID)

		if (pArea ~= nil) then
			SceneObject(pArea):destroyObjectFromWorld()
		end

		local pTrap = getSceneObject(trapID)

		if (pTrap ~= nil) then
			SceneObject(pTrap):destroyObjectFromWorld()
		end

		deleteData(trapID .. ":trapArea")
		deleteData(corvetteHMID .. ":electricTrap" .. i)
	end

	for i = 1, 66, 1 do
		local pCell = BuildingObject(pCorvetteHM):getCell(i)

		if (pCell ~= nil) then
			for j = SceneObject(pCell):getContainerObjectsSize() - 1, 0, -1 do
				local pObject = SceneObject(pCell):getContainerObject(j)

				if pObject ~= nil and not SceneObject(pObject):isPlayerCreature() then
					SceneObject(pObject):destroyObjectFromWorld()
				end
			end
		end
	end

	deleteData(corvetteHMID .. ":fuelSetting")
	deleteData(corvetteHMID .. ":engineSetting")
	deleteData(corvetteHMID .. ":hyperdriveSetting")
	deleteData(corvetteHMID .. ":engineDestroyed")
	deleteData(corvetteHMID .. ":electricTrapEnabled")
	deleteData(corvetteHMID .. ":H3P0ID")
	deleteData(corvetteHMID .. ":repairDroidComplete")
	deleteData(corvetteHMID .. ":ownerID")
	deleteData("corvetteActive:" .. corvetteHMID)
	deleteData("corvetteDungeonID:" .. corvetteHMID)
	deleteData("corvetteStartTime:" .. corvetteHMID)
end

function CorellianCorvetteHM:getNewDungeonID()
	local lastID = tonumber(getQuestStatus("CorellianCorvetteHM:lastDungeonID"))
	local newID = 0

	if (lastID == nil or lastID == 0) then
		newID = 1
	else
		newID = lastID + 1
	end

	setQuestStatus("CorellianCorvetteHM:lastDungeonID", newID)

	return newID
end

function CorellianCorvetteHM:getCorvetteFromDungeonID(dungeonID)
	local corvetteHMID = 0
	for i = 1, #self.buildings, 1 do
		local buildingIds = self.buildings[i]

		for j = 1, #buildingIds, 1 do
			local buildingID = buildingIds[j]

			if (readData("corvetteDungeonID:" .. buildingID) == dungeonID) then
				corvetteHMID = buildingID
			end
		end
	end

	return getSceneObject(corvetteHMID)
end
