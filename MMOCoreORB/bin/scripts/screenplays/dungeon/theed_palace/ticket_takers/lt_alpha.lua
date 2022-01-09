lt_alpha = { planetName = "naboo", npcTemplate = "lt_alpha", x = -4871, z = 6, y = 4144, direction = -141, cellID = 0, position = STAND }

ticketTakerLtAlpha = PalaceTicketTakerLogic:new {
	numberOfActs = 1,
	npc = lt_alpha,
	takerName = "ticketTakerLtAlpha",
	faction = FACTIONREBEL,
	goodbyeString = "@conversation/corvette_rebel_pilot:s_6e257495", -- No, I'm just passing through.
	helpMeString = "@conversation/corvette_rebel_pilot:s_1a003c0e", -- Ah no. I hear you can help me intercept a Corellian corvette controlled by the Empire?
	nevermindString = "@conversation/corvette_rebel_pilot:s_1a71d76e", -- Um... nothing. Nevermind.
	aboutMissionString = "@conversation/corvette_rebel_pilot:s_1ab00f5e", -- [Tell him about your mission]
}

registerScreenPlay("ticketTakerLtAlpha", false)

ticketTakerLtAlphaConvoHandler = PalaceTicketTakerConvoHandler:new {
	ticketTaker = ticketTakerLtAlpha
}
