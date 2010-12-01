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


if select(2, UnitClass("player")) ~= "WARRIOR" then return end 

local L = LibStub("AceLocale-3.0"):GetLocale("BuffEnough")
local Warrior = BuffEnough:GetOrCreateModule("Player")


--[[ ---------------------------------------------------------------------------
     Check class buffs
----------------------------------------------------------------------------- ]]
function Warrior:CheckClassBuffs()
   if BuffEnough.debug then BuffEnough:debug("Checking warrior buffs") end
   
   if UnitAffectingCombat("player") then
      local expectsMight = BuffEnough:IsExpectingTrackedItem(L["Buffs"], BuffEnough.spells["Blessing of Might"])
      local expectsHealth = BuffEnough:IsExpectingTrackedItem(L["Buffs"], BuffEnough.spells["Fortitude/Health"]) 
      if expectsMight and not expectsHealth then
	 BuffEnough:TrackItem(L["Buffs"], BuffEnough.spells["Commanding Shout"], false, true, false, nil, nil, true)
      elseif not expectsMight and expectsHealth then
	 BuffEnough:TrackItem(L["Buffs"], BuffEnough.spells["Battle Shout"], false, true, false, nil, nil, true)
      else
	 if BuffEnough.partyClassCount["WARRIOR"] > 1 then	 
	    BuffEnough:TrackItem(L["Buffs"], BuffEnough.spells["Battle Shout"], false, true, false, nil, nil, true)
	 end
	 BuffEnough:TrackItem(L["Buffs"], BuffEnough.spells["Commanding Shout"], false, true, false, nil, nil, true)
      end
   end
   
   local isDefensiveStance = GetShapeshiftForm(true) == 2
   
   if BuffEnough.playerIsTank then
      BuffEnough:TrackItem(L["Buffs"], BuffEnough.spells["Defensive Stance"], isDefensiveStance, true, false, nil, nil, true)
   else
      BuffEnough:TrackItem(L["Buffs"], BuffEnough.spells["Defensive Stance"], isDefensiveStance, false, true, nil, nil, true)
   end   
end
