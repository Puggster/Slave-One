lt_lance_hm = { planetName = "naboo", npcTemplate = "lt_lance_hm", x = -45, z = 8.0, y = -28, direction = -18, cellID = 1692104, position = STAND }

ticketTakerLtLance_hm = CorvetteHMTicketTakerLogic:new {
	numberOfActs = 1,
	npc = lt_lance_hm,
	takerName = "ticketTakerLtLance_hm",
	faction = FACTIONREBEL,
	goodbyeString = "@conversation/corvette_rebel_pilot:s_6e257495", -- No, I'm just passing through.
	helpMeString = "@conversation/corvette_rebel_pilot:s_1a003c0e", -- Ah no. I hear you can help me intercept a Corellian corvette controlled by the Empire?
	nevermindString = "@conversation/corvette_rebel_pilot:s_1a71d76e", -- Um... nothing. Nevermind.
	aboutMissionString = "@conversation/corvette_rebel_pilot:s_1ab00f5e", -- [Tell him about your mission]
}

registerScreenPlay("ticketTakerLtLance_hm", false)

ticketTakerLtLanceHMConvoHandler = CorvetteHMTicketTakerConvoHandler:new {
	ticketTaker = ticketTakerLtLance_hm
}
