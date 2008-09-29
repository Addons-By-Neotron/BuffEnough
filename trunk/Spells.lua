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
BuffEnough.blessings = {}
BuffEnough.groupBuffs = {}
BuffEnough.flasks = {}


-- Druids
BuffEnough.spells["Mark of the Wild"] = GetSpellInfo(26990)
BuffEnough.spells["Gift of the Wild"] = GetSpellInfo(26991)
BuffEnough.spells["Omen of Clarity"] = GetSpellInfo(16864)

BuffEnough.spellMap[BuffEnough.spells["Gift of the Wild"]] = BuffEnough.spells["Mark of the Wild"]

BuffEnough.groupBuffs[BuffEnough.spells["Gift of the Wild"]] = true

-- Hunter
BuffEnough.spells["Aspect of the Pack"] = GetSpellInfo(13159)
BuffEnough.spells["Aspect of the Cheetah"] = GetSpellInfo(5118)
BuffEnough.spells["Aspect of the Beast"] = GetSpellInfo(13161)

BuffEnough.spells["Aspect of the Monkey"] = GetSpellInfo(13163)
BuffEnough.spells["Aspect of the Viper"] = GetSpellInfo(34074)
BuffEnough.spells["Aspect of the Wild"] = GetSpellInfo(27045)
BuffEnough.spells["Aspect of the Hawk"] = GetSpellInfo(27044)
BuffEnough.spells["Aspect"] = L["Aspect"]

BuffEnough.spells["Trueshot Aura"] = GetSpellInfo(27066)

BuffEnough.spellMap[BuffEnough.spells["Aspect of the Monkey"]] = BuffEnough.spells["Aspect"]
BuffEnough.spellMap[BuffEnough.spells["Aspect of the Viper"]] = BuffEnough.spells["Aspect"]
BuffEnough.spellMap[BuffEnough.spells["Aspect of the Wild"]] = BuffEnough.spells["Aspect"]
BuffEnough.spellMap[BuffEnough.spells["Aspect of the Hawk"]] = BuffEnough.spells["Aspect"]

-- Mages
BuffEnough.spells["Arcane Intellect"] = GetSpellInfo(27126)
BuffEnough.spells["Arcane Brilliance"] = GetSpellInfo(27127)
BuffEnough.spells["Mage Armor"] = GetSpellInfo(27125)
BuffEnough.spells["Molten Armor"] = GetSpellInfo(30482)
BuffEnough.spells["Mage/Molten Armor"] = L["Mage/Molten Armor"]
BuffEnough.spells["Song of Victory"] = GetSpellInfo(46302)

BuffEnough.spellMap[BuffEnough.spells["Song of Victory"]] = BuffEnough.spells["Arcane Intellect"]
BuffEnough.spellMap[BuffEnough.spells["Arcane Brilliance"]] = BuffEnough.spells["Arcane Intellect"]
BuffEnough.spellMap[BuffEnough.spells["Mage Armor"]] = BuffEnough.spells["Mage/Molten Armor"]
BuffEnough.spellMap[BuffEnough.spells["Molten Armor"]] = BuffEnough.spells["Mage/Molten Armor"]

BuffEnough.groupBuffs[BuffEnough.spells["Arcane Brilliance"]] = true

-- Paladins
BuffEnough.spells["Blessing of Kings"] = GetSpellInfo(20217)
BuffEnough.spells["Blessing of Light"] = GetSpellInfo(27144)
BuffEnough.spells["Blessing of Might"] = GetSpellInfo(27140)
BuffEnough.spells["Blessing of Salvation"] = GetSpellInfo(1038)
BuffEnough.spells["Blessing of Sanctuary"] = GetSpellInfo(27168)
BuffEnough.spells["Blessing of Wisdom"] = GetSpellInfo(27142)
BuffEnough.spells["Greater Blessing of Kings"] = GetSpellInfo(25898)
BuffEnough.spells["Greater Blessing of Light"] = GetSpellInfo(27145)
BuffEnough.spells["Greater Blessing of Might"] = GetSpellInfo(27141)
BuffEnough.spells["Greater Blessing of Salvation"] = GetSpellInfo(25895)
BuffEnough.spells["Greater Blessing of Sanctuary"] = GetSpellInfo(27169)
BuffEnough.spells["Greater Blessing of Wisdom"] = GetSpellInfo(27143)

BuffEnough.spellMap[BuffEnough.spells["Greater Blessing of Kings"]] = BuffEnough.spells["Blessing of Kings"]
BuffEnough.spellMap[BuffEnough.spells["Greater Blessing of Light"]] = BuffEnough.spells["Blessing of Light"]
BuffEnough.spellMap[BuffEnough.spells["Greater Blessing of Might"]] = BuffEnough.spells["Blessing of Might"]
BuffEnough.spellMap[BuffEnough.spells["Greater Blessing of Salvation"]] = BuffEnough.spells["Blessing of Salvation"]
BuffEnough.spellMap[BuffEnough.spells["Greater Blessing of Sanctuary"]] = BuffEnough.spells["Blessing of Sanctuary"]
BuffEnough.spellMap[BuffEnough.spells["Greater Blessing of Wisdom"]] = BuffEnough.spells["Blessing of Wisdom"]

BuffEnough.blessings[BuffEnough.spells["Blessing of Kings"]] = true
BuffEnough.blessings[BuffEnough.spells["Blessing of Light"]] = true
BuffEnough.blessings[BuffEnough.spells["Blessing of Might"]] = true
BuffEnough.blessings[BuffEnough.spells["Blessing of Salvation"]] = true
BuffEnough.blessings[BuffEnough.spells["Blessing of Sanctuary"]] = true
BuffEnough.blessings[BuffEnough.spells["Blessing of Wisdom"]] = true
BuffEnough.blessings[BuffEnough.spells["Greater Blessing of Kings"]] = true
BuffEnough.blessings[BuffEnough.spells["Greater Blessing of Light"]] = true
BuffEnough.blessings[BuffEnough.spells["Greater Blessing of Might"]] = true
BuffEnough.blessings[BuffEnough.spells["Greater Blessing of Salvation"]] = true
BuffEnough.blessings[BuffEnough.spells["Greater Blessing of Sanctuary"]] = true
BuffEnough.blessings[BuffEnough.spells["Greater Blessing of Wisdom"]] = true

BuffEnough.spells["Concentration Aura"] = GetSpellInfo(19746)
BuffEnough.spells["Crusader Aura"] = GetSpellInfo(32223)
BuffEnough.spells["Devotion Aura"] = GetSpellInfo(27149)
BuffEnough.spells["Fire Resistance Aura"] = GetSpellInfo(27153)
BuffEnough.spells["Frost Resistance Aura"] = GetSpellInfo(27152)
BuffEnough.spells["Retribution Aura"] = GetSpellInfo(27150)
BuffEnough.spells["Sanctity Aura"] = GetSpellInfo(20218)
BuffEnough.spells["Shadow Resistance Aura"] = GetSpellInfo(27151)

BuffEnough.spells["Righteous Fury"] = GetSpellInfo(25780)

-- Priests
BuffEnough.spells["Power Word: Fortitude"] = GetSpellInfo(25389)
BuffEnough.spells["Prayer of Fortitude"] = GetSpellInfo(25392)
BuffEnough.spells["Divine Spirit"] = GetSpellInfo(25312)
BuffEnough.spells["Prayer of Spirit"] = GetSpellInfo(32999)
BuffEnough.spells["Inner Fire"] = GetSpellInfo(25431)

BuffEnough.spellMap[BuffEnough.spells["Prayer of Fortitude"]] = BuffEnough.spells["Power Word: Fortitude"]
BuffEnough.spellMap[BuffEnough.spells["Prayer of Spirit"]] = BuffEnough.spells["Divine Spirit"]

BuffEnough.groupBuffs[BuffEnough.spells["Prayer of Fortitude"]] = true
BuffEnough.groupBuffs[BuffEnough.spells["Prayer of Spirit"]] = true

-- Shamans
BuffEnough.spells["Lightning Shield"] = GetSpellInfo(25472)
BuffEnough.spells["Earth Shield"] = GetSpellInfo(32594)
BuffEnough.spells["Water Shield"] = GetSpellInfo(33736)
BuffEnough.spells["Elemental Shield"] = L["Elemental Shield"]

BuffEnough.spellMap[BuffEnough.spells["Lightning Shield"]] = BuffEnough.spells["Elemental Shield"]
BuffEnough.spellMap[BuffEnough.spells["Earth Shield"]] = BuffEnough.spells["Elemental Shield"]
BuffEnough.spellMap[BuffEnough.spells["Water Shield"]] = BuffEnough.spells["Elemental Shield"]

-- Warlocks
BuffEnough.spells["Fel Armor"] = GetSpellInfo(28189)
BuffEnough.spells["Phase Shift"] = GetSpellInfo(4511)

BuffEnough.spells["Burning Wish"] = GetSpellInfo(18789)
BuffEnough.spells["Touch of Shadow"] = GetSpellInfo(35701)
BuffEnough.spells["Fel Energy"] = GetSpellInfo(18792)
BuffEnough.spells["Fel Stamina"] = GetSpellInfo(18790)
BuffEnough.spells["Demonic Sacrifice"] = L["Demonic Sacrifice"]

BuffEnough.spellMap[BuffEnough.spells["Burning Wish"]] = BuffEnough.spells["Demonic Sacrifice"]
BuffEnough.spellMap[BuffEnough.spells["Touch of Shadow"]] = BuffEnough.spells["Demonic Sacrifice"]
BuffEnough.spellMap[BuffEnough.spells["Fel Energy"]] = BuffEnough.spells["Demonic Sacrifice"]
BuffEnough.spellMap[BuffEnough.spells["Fel Stamina"]] = BuffEnough.spells["Demonic Sacrifice"]

-- Warriors
BuffEnough.spells["Battle Shout"] = GetSpellInfo(2048)
BuffEnough.spells["Commanding Shout"] = GetSpellInfo(469)

-- Consumables
BuffEnough.spells["Flask/Elixirs"] = L["Flask/Elixirs"]
BuffEnough.spells["Battle Elixir"] = L["Battle Elixir"]
BuffEnough.spells["Guardian Elixir"] = L["Guardian Elixir"]

BuffEnough.flasks["Chromatic Resistance"] = GetSpellInfo(17629)
BuffEnough.flasks["Chromatic Wonder"] = GetSpellInfo(33208)
BuffEnough.flasks["Distilled Wisdom"] = GetSpellInfo(17627)
BuffEnough.flasks["Supreme Power"] = GetSpellInfo(17628)

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

-- Gear
BuffEnough.spells["Riding Crop"] = GetItemInfo(25653)
BuffEnough.spells["Skybreaker Whip"] = GetItemInfo(32863)
BuffEnough.spells["Fishing Pole"] = GetItemInfo(6256)
BuffEnough.spells["Blessed Medallion of Karabor"] = GetItemInfo(32757)

-- Index what we know about
for buff,_ in pairs(BuffEnough.spells) do
	BuffEnough.knownSpells[buff] = true
end