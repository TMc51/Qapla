trashtalkDB = {}
trashtalkDB.CONFIG = {
	pvponly = false, -- set to false to always enable this addon, to true if you only want it in PvP enabled zones
	allunits = false, -- enable for all units, set to false to define your own units in the "units" table
	units = {
		"target",
		"focus",
	},
}


trashtalk.KILLING_BLOWS= {
	-- Priest
	[GetSpellInfo(605)] = 1, 	-- Mind Control
	[GetSpellInfo(8092)] = 1, 	-- Mind Blast
	[GetSpellInfo(14914)] = 1, 	-- Holy Fire
	[GetSpellInfo(8122)] = 1, 	-- Psychic Scream
	[GetSpellInfo(9484)] = 1, 	-- Shackle Undead
	[GetSpellInfo(64044)] = 1, 	-- Psychic Horror
	[GetSpellInfo(8129)] = 1, 	-- Mana Burn
	[GetSpellInfo(585)] = 1, 	-- Smite
	[GetSpellInfo(34919)] = 1, 	-- Vampiric Touch
	[GetSpellInfo(48045)] = 1, 	-- Mind Sear
	[GetSpellInfo(73510)] = 1, 	-- Mind Spike