

klaatu_hm = { planetName = "naboo", npcTemplate = "klaatu_hm", x = -45, z = 8.0, y = -24, direction = -114, cellID = 1692104, position = STAND }

ticketTakerKlaatu_hm = CorvetteHMTicketTakerLogic:new {
	numberOfActs = 1,
	npc = klaatu_hm,
	takerName = "ticketTakerKlaatu_hm",
	faction = 0,
	goodbyeString = "@conversation/corvette_neutral_pilot:s_facfb7c0", -- Oh, sorry. I'll be going then.
	helpMeString = "@conversation/corvette_neutral_pilot:s_4fb4580f", -- I hear you can help me intercept a CorSec Corellian corvette?
	nevermindString = "@conversation/corvette_neutral_pilot:s_1a71d76e", -- Um... nothing. Nevermind.
	aboutMissionString = "@conversation/corvette_neutral_pilot:s_1ab00f5e", -- [Tell him about your mission]
}

registerScreenPlay("ticketTakerKlaatu_hm", true)

ticketTakerKlaatuHMConvoHandler = CorvetteHMTicketTakerConvoHandler:new {
	ticketTaker = ticketTakerKlaatu_hm
}
