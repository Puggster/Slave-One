local ObjectManager = require("managers.object.object_manager")

PalaceTicketTakerConvoHandler = conv_handler:new {
	ticketTaker = nil
}

function PalaceTicketTakerConvoHandler:setTicketTaker(taker)
	self.ticketTaker = taker
end

function PalaceTicketTakerConvoHandler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
	local screen = LuaConversationScreen(pConvScreen)
	local screenID = screen:getScreenID()

	local pConvScreen = screen:cloneScreen()
	local clonedConversation = LuaConversationScreen(pConvScreen)

	local playerID = SceneObject(pPlayer):getObjectID()
	local activeStep = 2
	if (screenID == "start") then
		if (activeStep == 2) then
			if (self.ticketTaker.faction == 0) then
				if (CreatureObject(pPlayer):getGroupSize() > 10) then
					clonedConversation:addOption(self.ticketTaker.helpMeString, "too_many")
				else
					clonedConversation:addOption(self.ticketTaker.helpMeString, "continue")
				end
			else
				local rightFaction = self.ticketTaker:checkFaction(pPlayer)
				if (CreatureObject(pPlayer):getGroupSize() > 10) and (rightFaction == false) then
					clonedConversation:addOption(self.ticketTaker.aboutMissionString, "mission_wrong_faction_too_many")
				elseif (CreatureObject(pPlayer):getGroupSize() > 10) then
					clonedConversation:addOption(self.ticketTaker.aboutMissionString, "mission_too_many")
				elseif (rightFaction == false) then
					clonedConversation:addOption(self.ticketTaker.aboutMissionString, "mission_wrong_faction")
				else
					clonedConversation:addOption(self.ticketTaker.aboutMissionString, "mission")
				end
			end
		end
		clonedConversation:addOption(self.ticketTaker.goodbyeString, "goodbye")
	elseif (screenID == "continue") then
		if (activeStep == 2) then
			if (self.ticketTaker.faction == FACTIONNEUTRAL) then
				if (CreatureObject(pPlayer):getGroupSize() > 10) then
					clonedConversation:addOption(self.ticketTaker.aboutMissionString, "mission_too_many")
				else
					clonedConversation:addOption(self.ticketTaker.aboutMissionString, "mission")
				end
			else
				local rightFaction = self.ticketTaker:checkFaction(pPlayer)
				if (CreatureObject(pPlayer):getGroupSize() > 10) and (rightFaction == false) then
					clonedConversation:addOption(self.ticketTaker.aboutMissionString, "mission_wrong_faction_too_many")
				elseif (CreatureObject(pPlayer):getGroupSize() > 10) then
					clonedConversation:addOption(self.ticketTaker.aboutMissionString, "mission_too_many")
				elseif (rightFaction == false) then
					clonedConversation:addOption(self.ticketTaker.aboutMissionString, "mission_wrong_faction")
				else
					clonedConversation:addOption(self.ticketTaker.aboutMissionString, "mission")
				end
			end
		end
		clonedConversation:addOption(self.ticketTaker.nevermindString, "goodbye2")
	elseif (screenID == "authorization") then
		self.ticketTaker:validateTicket(pPlayer)
	end
	return pConvScreen
end

function PalaceTicketTakerConvoHandler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
	local convoTemplate = LuaConversationTemplate(pConvTemplate)
	return convoTemplate:getScreen("start")
end
