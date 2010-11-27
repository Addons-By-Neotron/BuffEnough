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


local prototype = {}
prototype.playerClass = select(2, UnitClass("player"))

--[[ ---------------------------------------------------------------------------
     Check pet buffs
----------------------------------------------------------------------------- ]]
function prototype:CheckPetBuffs()

    if not UnitExists("pet") then return end
    
    local i = 1
	local petbuff = UnitBuff("pet", i);
	while petbuff do
	
		if BuffEnough.spellMap[petbuff] then
			petbuff = BuffEnough.spellMap[petbuff]
		end
	
	    BuffEnough:TrackItem(L["Pet"], petbuff, true)
	    
		i = i + 1;
  		petbuff = UnitBuff("pet", i);
  		
	end
    
    if BuffEnough:GetProfileParam("petfood") and
       ((GetNumRaidMembers() > 0) or (not BuffEnough:GetProfileParam("consumablesinraid")))
    then
    
		BuffEnough:TrackItem(L["Pet"], BuffEnough.spells["Well Fed"], false, true, false, nil, nil, true)
		
    end

end

--[[ ---------------------------------------------------------------------------
     Functions to be overriden by the prototype implementation
----------------------------------------------------------------------------- ]]
prototype.CheckClassBuffs = function() end

--[[ ---------------------------------------------------------------------------
     Loads the module for the prototype
----------------------------------------------------------------------------- ]]
function BuffEnough:GetOrCreateModule(t)	
    return self:GetModule(t, true) or self:NewModule(t, self.ClassPrototype)
end


BuffEnough.ClassPrototype = prototype
