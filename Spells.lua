--[[ ---------------------------------------------------------------------------

BuffEnough: personal buff monitor.

BuffEnough is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

BuffEnough is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with BuffEnough.  If not, see <http://www.gnu.org/licenses/>.

----------------------------------------------------------------------------- ]]


local L = LibStub("AceLocale-3.0"):GetLocale("BuffEnough")


BuffEnough.knownSpells = {}
BuffEnough.spells = {}
BuffEnough.spellMap = {}
BuffEnough.groupBuffs = {}
BuffEnough.flasks = {}
BuffEnough.battleElixirs = {}
BuffEnough.guardianElixirs = {}

-- Death Knights

BuffEnough.spells["Horn of Winter"] = GetSpellInfo(57330)
BuffEnough.spells["Blood Presence"] = GetSpellInfo(48263)
BuffEnough.spells["Frost Presence"] = GetSpellInfo(48266)
BuffEnough.spells["Unholy Presence"] = GetSpellInfo(48265)

BuffEnough.spells["Presence"] = L["Presence"]

BuffEnough.spellMap[BuffEnough.spells["Blood Presence"]] = BuffEnough.spells["Presence"]
BuffEnough.spellMap[BuffEnough.spells["Unholy Presence"]] = BuffEnough.spells["Presence"]
BuffEnough.spellMap[BuffEnough.spells["Frost Presence"]] = BuffEnough.spells["Presence"]


-- Druids
BuffEnough.spells["Moonkin Form"] = GetSpellInfo(24858)
BuffEnough.spells["Mark of the Wild"] = GetSpellInfo(1126)
BuffEnough.groupBuffs[BuffEnough.spells["Mark of the Wild"]] = true

-- Hunter
BuffEnough.spells["Aspect of the Pack"] = GetSpellInfo(13159)
BuffEnough.spells["Aspect of the Cheetah"] = GetSpellInfo(5118)
BuffEnough.spells["Aspect of the Wild"] = GetSpellInfo(20043)
BuffEnough.spells["Aspect of the Hawk"] = GetSpellInfo(13165)
BuffEnough.spells["Aspect of the Fox"] = GetSpellInfo(82661)
BuffEnough.spells["Aspect"] = L["Aspect"]

BuffEnough.spellMap[BuffEnough.spells["Aspect of the Fox"]] = BuffEnough.spells["Aspect"]
BuffEnough.spellMap[BuffEnough.spells["Aspect of the Wild"]] = BuffEnough.spells["Aspect"]
BuffEnough.spellMap[BuffEnough.spells["Aspect of the Hawk"]] = BuffEnough.spells["Aspect"]

-- Hunter Pets

BuffEnough.spells["Embrace of the Shale Spider"] = GetSpellInfo(90363)
BuffEnough.spells["Qiraji Fortitude"] = GetSpellInfo(90364)


-- Mages
BuffEnough.spells["Arcane Brilliance"] = GetSpellInfo(1459)
BuffEnough.spells["Dalaran Brilliance"] = GetSpellInfo(61316)
BuffEnough.spells["Mage Armor"] = GetSpellInfo(6117)
BuffEnough.spells["Molten Armor"] = GetSpellInfo(30482)
BuffEnough.spells["Mage/Molten Armor"] = L["Mage/Molten Armor"]

BuffEnough.spellMap[BuffEnough.spells["Mage Armor"]] = BuffEnough.spells["Mage/Molten Armor"]
BuffEnough.spellMap[BuffEnough.spells["Molten Armor"]] = BuffEnough.spells["Mage/Molten Armor"]

BuffEnough.groupBuffs[BuffEnough.spells["Arcane Brilliance"]] = true
BuffEnough.groupBuffs[BuffEnough.spells["Dalaran Brilliance"]] = true
BuffEnough.spellMap[BuffEnough.spells["Dalaran Brilliance"]] = BuffEnough.spells["Dalaran Brilliance"]

-- Paladins
BuffEnough.spells["Blessing of Kings"] = GetSpellInfo(20217)
BuffEnough.spells["Blessing of Might"] = GetSpellInfo(19740)

BuffEnough.groupBuffs[BuffEnough.spells["Blessing of Kings"]] = true
BuffEnough.groupBuffs[BuffEnough.spells["Blessing of Might"]] = true

BuffEnough.spells["Concentration Aura"] = GetSpellInfo(19746)
BuffEnough.spells["Crusader Aura"] = GetSpellInfo(32223)
BuffEnough.spells["Devotion Aura"] = GetSpellInfo(465)
BuffEnough.spells["Resistance Aura"] = GetSpellInfo(19891)
BuffEnough.spells["Retribution Aura"] = GetSpellInfo(7294)

BuffEnough.spells["Righteous Fury"] = GetSpellInfo(25780)

-- Priests
BuffEnough.spells["Power Word: Fortitude"] = GetSpellInfo(21562)
BuffEnough.spells["Inner Fire"] = GetSpellInfo(588)
BuffEnough.spells["Shadowform"] = GetSpellInfo(15473)

BuffEnough.groupBuffs[BuffEnough.spells["Power Word: Fortitude"]] = true

-- Shamans
BuffEnough.spells["Strength of Earth"] = GetSpellInfo(58646)
BuffEnough.spells["Lightning Shield"] = GetSpellInfo(324)
BuffEnough.spells["Earth Shield"] = GetSpellInfo(974)
BuffEnough.spells["Water Shield"] = GetSpellInfo(52127)
BuffEnough.spells["Elemental Shield"] = L["Elemental Shield"]

BuffEnough.spellMap[BuffEnough.spells["Lightning Shield"]] = BuffEnough.spells["Elemental Shield"]
BuffEnough.spellMap[BuffEnough.spells["Earth Shield"]] = BuffEnough.spells["Elemental Shield"]
BuffEnough.spellMap[BuffEnough.spells["Water Shield"]] = BuffEnough.spells["Elemental Shield"]

-- Warlocks
BuffEnough.spells["Dark Intent"] = GetSpellInfo(80398)
BuffEnough.spells["Fel Armor"] = GetSpellInfo(28176)
BuffEnough.spells["Demon Armor"] = GetSpellInfo(687)
BuffEnough.spells["Fel/Demon Armor"] = L["Fel/Demon Armor"]

BuffEnough.spellMap[BuffEnough.spells["Fel Armor"]] = BuffEnough.spells["Fel/Demon Armor"]
BuffEnough.spellMap[BuffEnough.spells["Demon Armor"]] = BuffEnough.spells["Fel/Demon Armor"]


-- Warlock Pets
BuffEnough.spells["Fel Intelligence"] = GetSpellInfo(54424)
BuffEnough.spells["Blood Pact"] = GetSpellInfo(6307)

BuffEnough.groupBuffs[BuffEnough.spells["Fel Intelligence"]] = true
BuffEnough.groupBuffs[BuffEnough.spells["Blood Pact"]] = true

-- Warriors
BuffEnough.spells["Battle Shout"] = GetSpellInfo(6673)
BuffEnough.spells["Commanding Shout"] = GetSpellInfo(469)
BuffEnough.spells["Defensive Stance"] = GetSpellInfo(71)


-- Scrolls
BuffEnough.spells["Scroll Fortitude"] = GetSpellInfo(86507)
BuffEnough.spells["Scroll Drums The Wild"] = GetSpellInfo(89050)

-- Special combo budds
BuffEnough.spells["MotW/BoK/EotSS (5% stats)"] = L["MotW/BoK/EotSS (5% stats)"]
BuffEnough.groupBuffs[BuffEnough.spells["MotW/BoK/EotSS (5% stats)"]] = true

BuffEnough.spellMap[BuffEnough.spells["Blessing of Kings"]] = BuffEnough.spells["MotW/BoK/EotSS (5% stats)"]
BuffEnough.spellMap[BuffEnough.spells["Mark of the Wild"]] = BuffEnough.spells["MotW/BoK/EotSS (5% stats)"]
BuffEnough.spellMap[BuffEnough.spells["Embrace of the Shale Spider"]] = BuffEnough.spells["MotW/BoK/EotSS (5% stats)"]
BuffEnough.spellMap[BuffEnough.spells["Scroll Drums The Wild"]] = BuffEnough.spells["MotW/BoK/EotSS (5% stats)"]
-- Fortitude
BuffEnough.spells["Fortitude/Health"] = L["Fortitude/Health"]
BuffEnough.spellMap[BuffEnough.spells["Power Word: Fortitude"]] = BuffEnough.spells["Fortitude/Health"]
BuffEnough.spellMap[BuffEnough.spells["Blood Pact"]] = BuffEnough.spells["Fortitude/Health"]
BuffEnough.spellMap[BuffEnough.spells["Qiraji Fortitude"]] = BuffEnough.spells["Fortitude/Health"]
-- we count these but don't ask for it
BuffEnough.spellMap[BuffEnough.spells["Commanding Shout"]] = BuffEnough.spells["Fortitude/Health"] 
BuffEnough.spellMap[BuffEnough.spells["Scroll Fortitude"]] = BuffEnough.spells["Fortitude/Health"] 

-- Consumables
BuffEnough.spells["Flask/Elixirs"] = L["Flask/Elixirs"]
BuffEnough.spells["Battle Elixir"] = L["Battle Elixir"]
BuffEnough.spells["Guardian Elixir"] = L["Guardian Elixir"]

-- The new alchemy flask - maybe shouldn't count but alas.
BuffEnough.flasks["Enhanced Intellect"] = GetSpellInfo(79640)
BuffEnough.flasks["Enhanced Strength"] = GetSpellInfo(79638)
BuffEnough.flasks["Enhanced Agility"] = GetSpellInfo(79639)

BuffEnough.battleElixirs[GetSpellInfo(60344)] = "Expertise"
BuffEnough.battleElixirs[GetSpellInfo(28497)] = "Mighty Agility"
BuffEnough.battleElixirs[GetSpellInfo(54494)] = "Major Agility"
BuffEnough.battleElixirs[GetSpellInfo(60340)] = "Accuracy"
BuffEnough.battleElixirs[GetSpellInfo(60345)] = "Armor Piercing"
BuffEnough.battleElixirs[GetSpellInfo(60341)] = "Deadly Strikes"
BuffEnough.battleElixirs[GetSpellInfo(60346)] = "Lightning Speed"

BuffEnough.guardianElixirs[GetSpellInfo(60347)] = "Mighty Thoughts"

BuffEnough.spells["Well Fed"] = GetSpellInfo(33263)
BuffEnough.spells["\"Well Fed\""] = GetSpellInfo(44106)
BuffEnough.spells["Increased Stamina"] = GetSpellInfo(25661)
BuffEnough.spells["Electrified"] = GetSpellInfo(43730)
BuffEnough.spells["Rumsey Rum Black Label"] = GetSpellInfo(25804)
BuffEnough.spells["Enlightened"] = GetSpellInfo(43722)

BuffEnough.spellMap[BuffEnough.spells["Increased Stamina"]] = BuffEnough.spells["Well Fed"]
BuffEnough.spellMap[BuffEnough.spells["Electrified"]] = BuffEnough.spells["Well Fed"]
BuffEnough.spellMap[BuffEnough.spells["Rumsey Rum Black Label"]] = BuffEnough.spells["Well Fed"]
BuffEnough.spellMap[BuffEnough.spells["Enlightened"]] = BuffEnough.spells["Well Fed"]
BuffEnough.spellMap[BuffEnough.spells["\"Well Fed\""]] = BuffEnough.spells["Well Fed"]

-- Gear with special handling
BuffEnough.spells["Riding Crop"] = GetItemInfo(25653)
BuffEnough.spells["Skybreaker Whip"] = GetItemInfo(32863)
BuffEnough.spells["Blessed Medallion of Karabor"] = GetItemInfo(32757)
BuffEnough.spells["Fishing Pole"] = GetSpellInfo(7738)

-- Any other gear
BuffEnough.gear = {
   (GetItemInfo(46349)), -- Chef's Hat
   (GetItemInfo(33820)), -- Weather-Beaten Fishing Hat
   (GetItemInfo(19972)), -- Lucky Fishing Hat
   (GetItemInfo(21525)), -- Green Winter Hat
   (GetItemInfo(21524)), -- Red Winter Hat
   (GetItemInfo(34087)), -- Green Winter Clothes
   (GetItemInfo(34085)), -- Red Winter Clothes
   (GetItemInfo(34086)), -- Winter Boots

 }

-- Index what we know about
for buff,value in pairs(BuffEnough.spells) do
   BuffEnough.knownSpells[buff] = true
end
