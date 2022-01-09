

palace_rep = { planetName = "naboo", npcTemplate = "palace_rep", x = -4871, z = 6.0, y = 4140.0, direction = -141, cellID = 0, position = STAND }

ticketTakerPalaceRep = PalaceTicketTakerLogic:new {
	numberOfActs = 1,
	npc = palace_rep,
	takerName = "ticketTakerPalaceRep",
	faction = FACTIONIMPERIAL,
	goodbyeString = "@conversation/corvette_imperial_pilot:s_8bb955f8", -- As you say, nothing.
	helpMeString = "@conversation/corvette_imperial_pilot:s_a7ad2e69", -- I hear you can help me intercept a Rebel blockade runner?
	nevermindString = "@conversation/corvette_imperial_pilot:s_1a71d76e", -- Um... nothing. Nevermind.
	aboutMissionString = "@conversation/corvette_imperial_pilot:s_1ab00f5e", -- [Tell him about your mission]
}

registerScreenPlay("ticketTakerPalaceRep", false)

ticketTakerPalaceRepConvoHandler = PalaceTicketTakerConvoHandler:new {
	ticketTaker = ticketTakerPalaceRep
}
