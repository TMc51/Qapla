SpellalertDBDB = {}

SpellalertDB.HARMFUL_SPELLS = {
	-- Monk
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

	-- Druid
	[GetSpellInfo(339)] = 1, 	-- Entangling Roots
	[GetSpellInfo(33786)] = 1, 	-- Cyclone
	[GetSpellInfo(5176)] = 1, 	-- Wrath
	[GetSpellInfo(2912)] = 1, 	-- Starfire

	-- Deathknight
	[GetSpellInfo(47528)] = 1, 	-- Mind Freeze
	[GetSpellInfo(42650)] = 1, 	-- Army of the Dead
	[GetSpellInfo(47476)] = 1, 	-- Strangulate
	[GetSpellInfo(53570)] = 1, 	-- Hungering Cold
	
	-- Hunter
--	[GetSpellInfo(3034)] = 1, 	-- Viper Sting [REMOVED]
	[GetSpellInfo(19386)] = 1, 	-- Wyvern Sting
	[GetSpellInfo(34490)] = 1, 	-- Silencing Shot
	[GetSpellInfo(19503)] = 1, 	-- Scatter Shot
	
	-- Mage
	[GetSpellInfo(118)] = 1, 	-- Polymorph
	[GetSpellInfo(61780)] = 1, 	-- Polymorph Turkey
	[GetSpellInfo(28271)] = 1, 	-- Polymorph Turtle
	[GetSpellInfo(28272)] = 1, 	-- Polymorph Pig
	[GetSpellInfo(61305)] = 1, 	-- Polymorph Black Cat
	[GetSpellInfo(61721)] = 1, 	-- Polymorph Rabbit
	[GetSpellInfo(116)] = 1, 	-- Frostbolt
	[GetSpellInfo(133)] = 1, 	-- Fireball
	[GetSpellInfo(30451)] = 1, 	-- Arcane Blast
	[GetSpellInfo(92315)] = 1, 	-- Pyroblast!
	[GetSpellInfo(2120)] = 1, 	-- Flamestrike
	[GetSpellInfo(44614)] = 1, 	-- Frostfire Bolt
	[GetSpellInfo(3158)] = 1, 	-- Slow
	[GetSpellInfo(10)] = 1,		-- Blizzard
--	[GetSpellInfo(31648)] = 1, 	-- Summon Water Elemental
	[GetSpellInfo(2948)] = 1, 	-- Scorch
	[GetSpellInfo(55342)] = 1, 	-- Mirror Image
	[GetSpellInfo(5143)] = 1, 	-- Arcane Missiles

	-- Shaman
	[GetSpellInfo(403)] = 1, 	-- Lightning Bolt
	[GetSpellInfo(421)] = 1, 	-- Chain Lightning	
	[GetSpellInfo(51505)] = 1, 	-- Lava Burst
	[GetSpellInfo(16190)] = 1, 	-- Mana Tide Totem
	[GetSpellInfo(51533)] = 1, 	-- Feral Spirit

	-- Warlock
	[GetSpellInfo(5782)] = 1, 	-- Fear
	[GetSpellInfo(5484)] = 1, 	-- Howl of Terror
	[GetSpellInfo(6358)] = 1, 	-- Seduction
	[GetSpellInfo(686)] = 1, 	-- Shadow Bolt
	[GetSpellInfo(27243)] = 1, 	-- Seed of Corruption
	[GetSpellInfo(698)] = 1, 	-- Ritual of Summoning
	[GetSpellInfo(6353)] = 1, 	-- Soul Fire
	[GetSpellInfo(48181)] = 1, 	-- Haunt
	[GetSpellInfo(5676)] = 1, 	-- Searing Pain
	[GetSpellInfo(710)] = 1, 	-- Banish
	[GetSpellInfo(50796)] = 1, 	-- Chaos Bolt
	[GetSpellInfo(348)] = 1, 	-- Immolate
	[GetSpellInfo(6789)] = 1, 	-- Death Coil
	[GetSpellInfo(48018)] = 1, 	-- Demonic Circle: Summon
	[GetSpellInfo(48020)] = 1, 	-- Demonic Circle: Teleport
	[GetSpellInfo(30108)] = 1, 	-- Unstable Affliction
	[GetSpellInfo(29722)] = 1, 	-- Incinerate
	[GetSpellInfo(30283)] = 1, 	-- Shadowfury

	-- Paladin
	[GetSpellInfo(879)] = 1, 	-- Exorcism
	
	-- Warrior
	[GetSpellInfo(46924)] = 1,  -- Bladestorm
	[GetSpellInfo(86346)] = 0,	-- Colossus Smash
	[GetSpellInfo(100)] = 0,	-- Charge
	[GetSpellInfo(34428)] = 0,	-- Victory Rush
	[GetSpellInfo(772)] = 0,	-- Rend
	[GetSpellInfo(6343)] = 0,	-- Thunder Clap
	[GetSpellInfo(78)] = 0,		-- Heroic Strike
	[GetSpellInfo(5308)] = 0,	-- Execute
	[GetSpellInfo(7386)] = 0,	-- Sunder Armor
	[GetSpellInfo(7384)] = 0,	-- Overpower
	[GetSpellInfo(845) = 0,		-- Cleave
	[GetSpellInfo(1680)] = 0,	-- Whirlwind
	[GetSpellInfo(6552)] = 0,	-- Pummel
	[GetSpellInfo(1464)] = 0,	-- Slam
	[GetSpellInfo(20230)] = 0,	-- Retaliation
	[GetSpellInfo(64382)] = 0,	-- Shattering Throw
	[GetSpellInfo(57755)] = 0,	-- Heroic Throw
	[GetSpellInfo(6544)] = 0,	-- Heroic Leap
	[GetSpellInfo(3411)] = 0,	-- Intervene
	[GetSpellInfo(20252)] = 0,	-- Intercept
	[GetSpellInfo(676) = 0,		-- Disarm
	[GetSpellInfo(72)] = 0,		-- Shield Bash
	[GetSpellInfo(1715)] = 0,	-- Hamstring
	[GetSpellInfo(5246)] = 0,	-- Intimidating Shout
	[GetSpellInfo(1160)] = 0,	-- Demoralizing Shout
}

SpellalertDB.HEALING_SPELLS = {
	-- Monk
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

	-- Priest
	[GetSpellInfo(32546)] = 1, 	-- Binding Heal
	[GetSpellInfo(34861)] = 1, 	-- Circle of Healing
	[GetSpellInfo(724)] = 1, 	-- Lightwell
	[GetSpellInfo(32375)] = 1, 	-- Mass Dispel
	[GetSpellInfo(2061)] = 1, 	-- Flash Heal
	[GetSpellInfo(2060)] = 1, 	-- Greater Heal
	[GetSpellInfo(2050)] = 1, 	-- Heal
	[GetSpellInfo(139)] = 1,	-- Renew
	[GetSpellInfo(15237)] = 1,	-- Holy Nova
	[GetSpellInfo(73325)] = 1,	-- Leap of Faith
	[GetSpellInfo(88684)] = 1,	-- Holy Word: Serenity
--	[GetSpellInfo(29170)] = 1, 	-- Lesser Heal [REMOVED]
	[GetSpellInfo(596)] = 1, 	-- Prayer of Healing
	[GetSpellInfo(2006)] = 1, 	-- Resurrection
	[GetSpellInfo(64843)] = 1, 	-- Divine Hymn
	[GetSpellInfo(64901)] = 1, 	-- Hymn of Hope
	[GetSpellInfo(47540)] = 1, 	-- Penance
	[GetSpellInfo(19236)] = 1, 	-- Desperate Prayer
	[GetSpellInfo(17)] = 1,		-- Power Word: Shield

	-- Druid
--	[GetSpellInfo(5158)] = 1, 	-- Healing Touch
	[GetSpellInfo(8936)] = 1, 	-- Regrowth
	[GetSpellInfo(50769)] = 1, 	-- Revive
	[GetSpellInfo(20484)] = 1, 	-- Rebirth
	[GetSpellInfo(50464)] = 1, 	-- Nourish

	-- Paladin
	[GetSpellInfo(19750)] = 1, 	-- Flash of Light
	[GetSpellInfo(635)] = 1, 	-- Holy Light
	[GetSpellInfo(7328)] = 1, 	-- Redemption
	[GetSpellInfo(633)] = 1, 	-- Lay on Hands

	-- Shaman
	[GetSpellInfo(1064)] = 1, 	-- Chain Heal
	[GetSpellInfo(331)] = 1, 	-- Healing Wave
--	[GetSpellInfo(77472)] = 1, 	-- Lesser Healing Wave [REMOVED]
	[GetSpellInfo(2008)] = 1, 	-- Ancestral Spirit
	[GetSpellInfo(8004)] = 1,	-- Healing Surge
	[GetSpellInfo(77472)] = 1,	-- Greater Healing Wave
	[GetSpellInfo(73920)] = 1,	-- Healing Rain

	-- Rogue
	[GetSpellInfo(2094)] = 1, 	-- Blind
	[GetSpellInfo(36554)] = 1, 	-- Shadowstep
	[GetSpellInfo(14185)] = 1, 	-- Preparation
	
	-- Warrior
	[GetSpellInfo(55694)] = 1,	-- Enraged Regeneration
}

SpellalertDB.BUFF_SPELLS = {
	-- Monk
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
	
	-- Druid
--	[GetSpellInfo(16810)] = 1, -- Nature's Grasp,
	[GetSpellInfo(17116)] = 1, -- Nature's Swiftness,
	[GetSpellInfo(22842)] = 1, -- Frenzied Regeneration,
	[GetSpellInfo(29166)] = 1, -- Innervate,
--	[GetSpellInfo(53191)] = 1, -- Starfall,
	[GetSpellInfo(43317)] = 1, -- Dash,
	
	-- Death Knight
	[GetSpellInfo(50514)] = 1, -- Summon Gargoyle,
	[GetSpellInfo(58130)] = 1, -- Icebound Fortitude,
	[GetSpellInfo(49028)] = 1, -- Dancing Rune Weapon,
	[GetSpellInfo(55213)] = 1, -- Hysteria,
	
	-- Mage
	[GetSpellInfo(29976)] = 1, -- Presence of Mind,
	[GetSpellInfo(36911)] = 1, -- Ice Block,
	[GetSpellInfo(25641)] = 1, -- Frost Ward,
	[GetSpellInfo(37844)] = 1, -- Fire Ward,
	[GetSpellInfo(54160)] = 1, -- Arcane Power,
	[GetSpellInfo(11392)] = 1, -- Invisibility,
	[GetSpellInfo(49264)] = 1, -- Blazing Speed,
	[GetSpellInfo(57761)] = 1, -- Fireball!,
--	[GetSpellInfo(28682)] = 1, -- Combustion,
	[GetSpellInfo(12472)] = 1, -- Icy Veins,
	
	-- Shaman
	[GetSpellInfo(6742)] = 1, -- Bloodlust,
	[GetSpellInfo(64701)] = 1, -- Elemental Mastery,
	[GetSpellInfo(23689)] = 1, -- Heroism,
	
	-- Warlock
	[GetSpellInfo(17941)] = 1, -- Shadow Trance,
	[GetSpellInfo(37673)] = 1, -- Metamorphosis,
	
	-- Rogue
	[GetSpellInfo(57840)] = 1, -- Killing Spree,
	[GetSpellInfo(28752)] = 1, -- Adrenaline Rush,
	[GetSpellInfo(33735)] = 1, -- Blade Flurry,
	[GetSpellInfo(51713)] = 1, -- Shadow Dance,
	[GetSpellInfo(61922)] = 1, -- Sprint,
	[GetSpellInfo(8822)] = 1, -- Stealth,
	[GetSpellInfo(15087)] = 1, -- Evasion,
	[GetSpellInfo(39666)] = 1, -- Cloak of Shadows,
	
	-- Warrior
	[GetSpellInfo(12976)] = 1,  -- Last Stand
	[GetSpellInfo(1719)] = 1,   -- Recklessness
	[GetSpellInfo(20240)] = 1,  -- Retaliation
	[GetSpellInfo(871)] = 1,	-- Shield Wall
	[GetSpellInfo(12292)] = 1,  -- Death Wish
	[GetSpellInfo(23920)] = 1,  -- Spell Reflection
	[GetSpellInfo(2565)] = 1,   -- Shield Block
	[GetSpellInfo(6572)] = 1,   -- Revenge
	[GetSpellInfo(18499)] = 1,	-- Berserker Rage	
	[GetSpellInfo(469)] = 0,	-- Commanding Shout
	[GetSpellInfo(6673)] = 0,	-- Battle Shout

	-- Paladin
	[GetSpellInfo(43430)] = 1, -- Avenging Wrath
	[GetSpellInfo(66115)] = 1, -- Hand of Freedom
	[GetSpellInfo(41450)] = 1, -- Blessing of Protection
	[GetSpellInfo(13874)] = 1, -- Divine Shield
	[GetSpellInfo(13007)] = 1, -- Divine Protection
	[GetSpellInfo(6940)] = 1, -- Hand of Sacrifice
--	[GetSpellInfo(53601)] = 1, -- Sacred Shield
	[GetSpellInfo(54428)] = 1, -- Divine Plea

	-- Hunter
	[GetSpellInfo(31567)] = 1, -- Deterrence	
	[GetSpellInfo(34692)] = 1, -- The Beast Within

	-- Priest
	[GetSpellInfo(44416)] = 1,  -- Pain Suppression
	[GetSpellInfo(37274)] = 1,  -- Power Infusion
	[GetSpellInfo(47585)] = 1,  -- Dispersion
	[GetSpellInfo(588)] = 1,	-- Inner Fire
	[GetSpellInfo(20562)] = 1,  -- Power Word: Fortitude
	[GetSpellInfo(1706)] = 1,	-- Levitate
	[GetSpellInfo(73413)] = 1,	-- Inner Will
	[GetSpellInfo(6346)] = 1,	-- Fear Ward

	-- Racial
	[GetSpellInfo(69575)] = 1, -- Stoneform
	[GetSpellInfo(24378)] = 1, -- Berserking
	[GetSpellInfo(59752)] = 1, -- Every Man For Himself
	[GetSpellInfo(7744)] = 1, 	-- Will of The Forsaken
	
	-- Misc
	[GetSpellInfo(42292)] = 1, -- PVP Trinket
	[GetSpellInfo(57073)] = 1,	-- Drink
}