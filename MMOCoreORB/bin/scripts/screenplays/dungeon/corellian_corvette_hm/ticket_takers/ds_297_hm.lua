

ds_297_hm = { planetName = "naboo", npcTemplate = "ds_297_hm", x = -45, z = 8.0, y = -20.0, direction = -141, cellID = 1692104, position = STAND }

ticketTakerDS297_hm = CorvetteHMTicketTakerLogic:new {
	numberOfActs = 1,
	npc = ds_297_hm,
	takerName = "ticketTakerDS297_hm",
	faction = FACTIONIMPERIAL,
	goodbyeString = "@conversation/corvette_imperial_pilot:s_8bb955f8", -- As you say, nothing.
	helpMeString = "@conversation/corvette_imperial_pilot:s_a7ad2e69", -- I hear you can help me intercept a Rebel blockade runner?
	nevermindString = "@conversation/corvette_imperial_pilot:s_1a71d76e", -- Um... nothing. Nevermind.
	aboutMissionString = "@conversation/corvette_imperial_pilot:s_1ab00f5e", -- [Tell him about your mission]
}

registerScreenPlay("ticketTakerDS297_hm", false)

ticketTakerDS297HMConvoHandler = CorvetteHMTicketTakerConvoHandler:new {
	ticketTaker = ticketTakerDS297_hm
}
