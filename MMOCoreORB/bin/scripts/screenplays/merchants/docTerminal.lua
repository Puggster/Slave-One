--Thanks to Remastered. I used their remove buff terminal and modified it.
--https://github.com/Raizze/Remastered/

docTerminal = ScreenPlay:new {
	numberOfActs = 1,
	healingFee = 15000, -- Fee (in Credits) for healing wounds
	woundFee = 10000, -- Fee (in Credits) for Black Bar, wound all stats
	bfhealFee = 5000, -- Fee (in Credits) for Battle Fatigue healing
	bfdamageFee = 5000,  -- Fee (in Credits) for Battle Fatigue damage

	termModel = "object/tangible/terminal/doc_terminal.iff",
	termName = "Experimental Enhancement Augmentator",
	terminals = {
		{planetName = "corellia", ox = 0, oy = 0, oz = 0, ow = 1, x = 21.5, z = 0.26, y = 0, parentid = 1855531}, --coronet med center
		{planetName = "tatooine", ox = 0, oy = 1, oz = 0, ow = 0, x = 2.5, z = 0.2, y = 0, parentid = 9655496}, --mos eisly med center
		{planetName = "naboo", ox = 0, oy = 0, oz = 0, ow = 1, x = 21.4664, z = 0.26, y = 0, parentid = 1697360}, --theed med center
	}
}

registerScreenPlay("docTerminal", true)

function docTerminal:start()
	-- Spawn terminals
	for i = 1, #self.terminals, 1 do
		local pTerminal = spawnSceneObject(self.terminals[i].planetName, self.termModel, self.terminals[i].x, self.terminals[i].z, self.terminals[i].y, self.terminals[i].parentid, self.terminals[i].ow, self.terminals[i].ox, self.terminals[i].oy, self.terminals[i].oz)
		if (pTerminal ~= nil) then
			-- Add menu and custom name
			SceneObject(pTerminal):setObjectMenuComponent("docTerminalMenuComponent")
			SceneObject(pTerminal):setCustomObjectName(self.termName)
		end
	end
end


-- UI Window Functions

function docTerminal:openWindow(pCreatureObject, pUsingObject)
	local sui = SuiListBox.new("docTerminal", "defaultCallback")

	-- Using object ID, stored in PageData
	if (pUsingObject == nil) then
		sui.setTargetNetworkId(0)
	else
		sui.setTargetNetworkId(SceneObject(pUsingObject):getObjectID())
	end

	sui.setForceCloseDistance(16)

	sui.setTitle("Experimental Enhancement Augmentator")

	local message = "Select the desired service, below."

	sui.setPrompt(message)

	sui.add("Black Bar all stats (" .. tostring(self.woundFee) .. ")", "")

	sui.add("Heal Wounds (" .. tostring(self.healingFee) .. ")", "")

  sui.add("Heal Battle Fatigue (" .. tostring(self.bfhealFee) .. ")", "")

  sui.add("Inflict Battle Fatigue (" .. tostring(self.bfdamageFee) .. ")", "")

	sui.sendTo(pCreatureObject)
end

function docTerminal:defaultCallback(pPlayer, pSui, eventIndex, args)
	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		return
	end

	if (args == "-1") then
		CreatureObject(pPlayer):sendSystemMessage("No option was selected, please try again.")
		return
	end

	local selectedOption = tonumber(args) + 1

	if (selectedOption == 1) then
		self:woundPlayer(pPlayer)
  elseif (selectedOption == 2) then
		self:healWounds(pPlayer)
	elseif (selectedOption == 3) then
		self:bfheal(pPlayer)
	elseif (selectedOption == 4) then
		self:bfdamage(pPlayer)
	end
end

-- HAM Functions

function docTerminal:woundPlayer(pPlayer)
    local price = self.woundFee
		local playerCash = CreatureObject(pPlayer):getCashCredits()
		local playerBank = CreatureObject(pPlayer):getBankCredits()


		if (playerCash + playerBank < price) then
			CreatureObject(pPlayer):sendSystemMessage("Insufficient Funds: You require " .. tostring(self.woundFee) .. " credits to use the black bar service.")
			return
		end

			if (price <= CreatureObject(pPlayer):getCashCredits()) then
				CreatureObject(pPlayer):subtractCashCredits(price)
			else
				price = price - CreatureObject(pPlayer):getCashCredits()
				CreatureObject(pPlayer):subtractCashCredits(CreatureObject(pPlayer):getCashCredits())
				CreatureObject(pPlayer):subtractBankCredits(price)
			end

  for i = 0, 8 do CreatureObject(pPlayer):setWounds(i, 6000) end
	CreatureObject(pPlayer):sendSystemMessage("You have been charged " .. tostring(self.woundFee) .. " credits, Your stats have been fully wounded. Thank you for using the " .. tostring(self.termName) .. "")
end

function docTerminal:healWounds(pPlayer)
	local price = self.healingFee

		local playerCash = CreatureObject(pPlayer):getCashCredits()
		local playerBank = CreatureObject(pPlayer):getBankCredits()

		if (playerCash + playerBank < price) then
			CreatureObject(pPlayer):sendSystemMessage("Insufficient Funds: You require " .. tostring(self.healingFee) .. " credits to use the healing service.")
			return
		end

		if (price <= CreatureObject(pPlayer):getCashCredits()) then
			CreatureObject(pPlayer):subtractCashCredits(price)
		else
			price = price - CreatureObject(pPlayer):getCashCredits()
			CreatureObject(pPlayer):subtractCashCredits(CreatureObject(pPlayer):getCashCredits())
			CreatureObject(pPlayer):subtractBankCredits(price)
			CreatureObject(pPlayer):sendSystemMessage("You have been charged " .. tostring(self.healingFee) .. " credits for healing servies. Thank you for using the " .. tostring(self.termName) .. "")
		end

	for i = 0, 8 do CreatureObject(pPlayer):setWounds(i, 0)	end
	CreatureObject(pPlayer):sendSystemMessage("Your wounds have been healed and your mind is at ease.")
end

function docTerminal:bfheal(pPlayer)
	local price = self.bfhealFee

		local playerCash = CreatureObject(pPlayer):getCashCredits()
		local playerBank = CreatureObject(pPlayer):getBankCredits()

		if (playerCash + playerBank < price) then
			CreatureObject(pPlayer):sendSystemMessage("Insufficient Funds: You require " .. tostring(self.bfhealFee) .. " credits to use the healing service.")
			return
		end

		if (price <= CreatureObject(pPlayer):getCashCredits()) then
			CreatureObject(pPlayer):subtractCashCredits(price)
		else
			price = price - CreatureObject(pPlayer):getCashCredits()
			CreatureObject(pPlayer):subtractCashCredits(CreatureObject(pPlayer):getCashCredits())
			CreatureObject(pPlayer):subtractBankCredits(price)
			CreatureObject(pPlayer):sendSystemMessage("You have been charged " .. tostring(self.bfhealFee) .. " credits for healing servies. Thank you for using the " .. tostring(self.termName) .. "")
		end
	CreatureObject(pPlayer):setShockWounds(0)
	CreatureObject(pPlayer):sendSystemMessage("Your Battle Fatigue have been healed and your mind is at ease.")
end

function docTerminal:bfdamage(pPlayer)
	local price = self.bfdamageFee

		local playerCash = CreatureObject(pPlayer):getCashCredits()
		local playerBank = CreatureObject(pPlayer):getBankCredits()

		if (playerCash + playerBank < price) then
			CreatureObject(pPlayer):sendSystemMessage("Insufficient Funds: You require " .. tostring(self.bfdamageFee) .. " credits to use the healing service.")
			return
		end

		if (price <= CreatureObject(pPlayer):getCashCredits()) then
			CreatureObject(pPlayer):subtractCashCredits(price)
		else
			price = price - CreatureObject(pPlayer):getCashCredits()
			CreatureObject(pPlayer):subtractCashCredits(CreatureObject(pPlayer):getCashCredits())
			CreatureObject(pPlayer):subtractBankCredits(price)
			CreatureObject(pPlayer):sendSystemMessage("You have been charged " .. tostring(self.bfdamageFee) .. " credits for healing servies. Thank you for using the " .. tostring(self.termName) .. "")
		end

	CreatureObject(pPlayer):setShockWounds(1000)
	CreatureObject(pPlayer):sendSystemMessage("Your Battle Fatigue has been damaged your mind is on edge.")
end



-- Radial Menu Functions

docTerminalMenuComponent = { }

function docTerminalMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local menuResponse = LuaObjectMenuResponse(pMenuResponse)
	menuResponse:addRadialMenuItem(20, 3, "Use Terminal")
end

function docTerminalMenuComponent:handleObjectMenuSelect(pObject, pPlayer, selectedID)
	if (pPlayer == nil or pObject == nil) then
		return 0
	end

	if CreatureObject(pPlayer):isInCombat() then
		CreatureObject(pPlayer):sendSystemMessage("Terminal services are not available while you are in combat.")
		return 0
	end

	if (selectedID == 20) then
		docTerminal:openWindow(pPlayer, pObject)
	end

	return 0
end

function docTerminalMenuComponent:noCallback(pPlayer, pSui, eventIndex)
	-- do nothing
end
