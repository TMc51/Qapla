--------------------------------------------------------------------------------------------
-- Let's declare us some variables
--------------------------------------------------------------------------------------------

local EventFrame = CreateFrame("Frame")
EventFrame:RegisterEvent("PLAYER_LOGIN")

local SpellAlert = CreateFrame("Frame", "SpellAlert")
local band, bor = bit.band, bit.bor
local enemy = bor(COMBATLOG_OBJECT_REACTION_HOSTILE, COMBATLOG_OBJECT_TYPE_PLAYER)

local notify
local tracker
local playerid
local msg



--------------------------------------------------------------------------------------------
-- ZOMG CLASS COLOURS! °o°
--------------------------------------------------------------------------------------------

local function isenemy(flags) return band(flags, enemy)==enemy end
local function tohex(val) return string.format("%.2x", val) end
local function getclasscolor(class) local color = RAID_CLASS_COLORS[class] if not color then return "ffffff" end return tohex(color.r*255)..tohex(color.g*255)..tohex(color.b*255) end
local function colorize(name) if name then return "|cff"..getclasscolor(select(2,UnitClass(name)))..name.."|r" else return nil end end



--------------------------------------------------------------------------------------------
-- Set up the guts for our frames
--------------------------------------------------------------------------------------------

local function CreateMsgFrame()
		msg = CreateFrame("MessageFrame", "ncKillingBlowMessageFrame", UIParent)
		msg:SetPoint("LEFT")
		msg:SetPoint("RIGHT")
		msg:SetPoint("CENTER")
		msg:SetHeight(31)
		msg:SetInsertMode("TOP")
		msg:SetFrameStrata("HIGH")
		msg:SetTimeVisible(1)
		msg:SetFadeDuration(1)
		msg:SetFont(STANDARD_TEXT_FONT, 30, "OUTLINE")
end

local function CreateAlertFrame(name)
	local f = CreateFrame("MessageFrame", name, UIParent)
	f:SetPoint("LEFT")
	f:SetPoint("RIGHT")
	f:SetHeight(25)
	f:SetInsertMode("TOP")
	f:SetFrameStrata("HIGH")
	f:SetTimeVisible(1)
	f:SetFadeDuration(3)
	f:SetFont(STANDARD_TEXT_FONT, 23, "OUTLINE")
	return f
end



--------------------------------------------------------------------------------------------
-- Killing Blow Message Frame
--------------------------------------------------------------------------------------------

local function SetUpTracker()
		tracker = CreateFrame("Frame")
		tracker:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
		tracker:SetScript("OnEvent", function(_, _, _, event, _, guid, _, _, _, _, destName,  destFlags)
				if event == "PARTY_KILL" and guid==playerid and bit.band(destFlags, COMBATLOG_OBJECT_TYPE_PLAYER) > 0 then
					SendChatMessage(msg[random(#mssg)], "SAY", NIL)
					DoEmote(emo[random(1,8)], "none")
					notify:AddMessage("KB: "..destName, 1, 1, 0)
				end
		end)
end



--------------------------------------------------------------------------------------------
-- Here are our alert frames
--------------------------------------------------------------------------------------------

local spell = createmessageframe("SpellAlertFrame")
spell:SetPoint("TOP", 0, -200)
local buff = createmessageframe("BuffAlertFrame")
buff:SetPoint("BOTTOM", spell, "TOP", 0, 2)



--------------------------------------------------------------------------------------------
-- Check config settings, and enable/disable shit
--------------------------------------------------------------------------------------------

-- Check to make sure PVP Only is selected via config
function ncSpellalert:PLAYER_LOGIN()
	if ncSpellalertDB.CONFIG.pvponly then
		self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
		self:ZONE_CHANGED_NEW_AREA()
	else
		self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
		self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	end
	self:UnregisterEvent("PLAYER_LOGIN")
end

-- If yes, activated only in BGs, otherwise always active
function ncSpellalert:ZONE_CHANGED_NEW_AREA()
	local pvp = GetZonePVPInfo()
	if not pvp or pvp ~= "sanctuary" then
		self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
		self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	else
		self:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
		self:UnregisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	end
end

-- Players only, or all mobs?
local function isallowedunit(unit)
	for key, val in pairs(ncSpellalertDB.CONFIG.units) do
		if UnitIsUnit(unit, val) then return true end
	end
	return false
end



--------------------------------------------------------------------------------------------
-- Scan Combat Log for spell casts
--------------------------------------------------------------------------------------------

-- Scan for spell casts
function ncSpellalert:COMBAT_LOG_EVENT_UNFILTERED(event, timestamp, eventType, hideCaster, sourceGUID, sourcename, sourceFlags, destGUID, destname, destFlags, spellid, spellname)
	if (spellname==deathcoil and select(2, UnitClass(sourceGUID))=="DEATHKNIGHT") or spellid == 59752 or spellid == 42292 or spellid == 7744 then return end -- ignores

	if eventType == "SPELL_AURA_APPLIED" and ncSpellalertDB.BUFF_SPELLS[spellname] and isenemy(destFlags) and (ncSpellalertDB.CONFIG.allunits or isallowedunit(destname)) then
		buff:AddMessage(format(ACTION_SPELL_AURA_APPLIED_BUFF_FULL_TEXT_NO_SOURCE, nil, "|cff00ff00"..spellname.."|r", nil, colorize(destname)))
	elseif eventType == "SPELL_CAST_START" and isenemy(sourceFlags) and (ncSpellalertDB.CONFIG.allunits or isallowedunit(sourcename)) then
		local color		
		
		if ncSpellalertDB.HARMFUL_SPELLS[spellname] then
			color = "ff0000"
		elseif ncSpellalertDB.HEALING_SPELLS[spellname] then
			color = "ffff00"
		end
		
		if color then
			local template
			if sourcename and destname then
				template = ACTION_SPELL_CAST_START_FULL_TEXT_NO_SOURCE
			elseif sourcename then
				template = ACTION_SPELL_CAST_START_FULL_TEXT_NO_DEST
			elseif destname then
				template = ACTION_SPELL_CAST_START_FULL_TEXT
			end
			spell:AddMessage(format(template, colorize(sourcename), "|cff"..color..spellname.."|r", nil, colorize(destname)))
		end
	end
end

-- Print successful casts
function ncSpellalert:UNIT_SPELLCAST_SUCCEEDED(event, unit, spell, rank)
	event = special[spell]
	if event and UnitIsEnemy("player", unit) then
		if event == 1 then
			buff:AddMessage(format("%s used a |cff00ff00PvP trinket|r.", colorize(UnitName(unit))))
		elseif event == 2 then	
			buff:AddMessage(format("%s used |cff00ff00Will of the Forsaken|r.", colorize(UnitName(unit))))
		elseif event == 3 then
			buff:AddMessage(format("%s is drinking.", colorize(UnitName(unit))))
		elseif event == 4 then
			buff:AddMessage(format("%s used Every Man for Himself.", colorize(UnitName(unit))))
		end
	end
end






--------------------------------------------------------------------------------------------
-- Here be slash commands
--------------------------------------------------------------------------------------------

SLASH_AK1 = '/LI'
local function handler(msg)
 if msg == 'on' then
  tracker:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
 else
  tracker:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
 end
end
SlashCmdList["LI"] = handler



--------------------------------------------------------------------------------------------
-- Set scripts
--------------------------------------------------------------------------------------------

EventFrame:SetScript("OnEvent", function(self, event, ...)
		if event == "PLAYER_LOGIN" then
				playerid = UnitGUID("player")
				SetUpTracker()
		end
end

ncSpellalert:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
ncSpellalert:RegisterEvent("PLAYER_LOGIN")