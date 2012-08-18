TrashTalkDB = {}

TrashTalk.KILLING_BLOWS= {

	[1] = "PWNT!",
	[2] = "OWNED!",
	[3] = "GOTCHA!",
	[4] = "Got 'em!",
	[5] = "Who's yo daddy?",
	[6] = "Oops, I did it again.",
	[7] = "BooYah!",
	[8] = "Maybe next time.  ...NOT!",
	
}

TrashTalkDB.HEALING_SPELLS = {
	-- Priest
	[GetSpellInfo(73325)] = 1,	-- Leap of Faith -- trololol
	[GetSpellInfo(2006)] = 1, 	-- Resurrection -- 
	[GetSpellInfo(17)] = 1,		-- Power Word: Shield -- All power forward shields!

	-- Druid
	[GetSpellInfo(50769)] = 1, 	-- Revive
	[GetSpellInfo(20484)] = 1, 	-- Rebirth -- Don't die on me now, damnit!
	
	-- Paladin
	[GetSpellInfo(7328)] = 1, 	-- Redemption
	[GetSpellInfo(633)] = 1, 	-- Lay on Hands -- Reset Button

	-- Shaman
	[GetSpellInfo(1064)] = 1, 	-- Chain Heal -- Jebus Beamz
	[GetSpellInfo(2008)] = 1, 	-- Ancestral Spirit
	
	-- Warrior
	[GetSpellInfo(55694)] = 1,	-- Enraged Regeneration
}
