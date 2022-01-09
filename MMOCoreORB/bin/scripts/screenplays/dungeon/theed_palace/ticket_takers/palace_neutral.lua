

palace_neutral = { planetName = "naboo", npcTemplate = "palace_neutral", x = -4871, z = 6.0, y = 4142, direction = -141, cellID = 0, position = STAND }

ticketTakerPalaceNeutral = PalaceTicketTakerLogic:new {
	numberOfActs = 1,
	npc = palace_neutral,
	takerName = "ticketTakerPalaceNeutral",
	faction = 0,
	goodbyeString = "@conversation/corvette_neutral_pilot:s_facfb7c0", -- Oh, sorry. I'll be going then.
	helpMeString = "@conversation/corvette_neutral_pilot:s_4fb4580f", -- I hear you can help me intercept a CorSec Corellian corvette?
	nevermindString = "@conversation/corvette_neutral_pilot:s_1a71d76e", -- Um... nothing. Nevermind.
	aboutMissionString = "@conversation/corvette_neutral_pilot:s_1ab00f5e", -- [Tell him about your mission]
}

registerScreenPlay("ticketTakerPalaceNeutral", false)

ticketTakerPalaceNeutralConvoHandler = PalaceTicketTakerConvoHandler:new {
	ticketTaker = ticketTakerPalaceNeutral
}
