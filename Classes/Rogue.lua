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


if select(2, UnitClass("player")) ~= "ROGUE" then return end 

local L = LibStub("AceLocale-3.0"):GetLocale("BuffEnough")
local Rogue = BuffEnough:GetOrCreateModule("Player")
local thrownSlotId = GetInventorySlotInfo("RangedSlot")
local GetInventoryItemLink = GetInventoryItemLink
local GetItemInfo = GetItemInfo

--[[ ---------------------------------------------------------------------------
     Check class buffs
----------------------------------------------------------------------------- ]]
function Rogue:CheckClassBuffs()

    if BuffEnough.debug then BuffEnough:debug("Checking rogue buffs") end

    BuffEnough:TrackItem(L["Buffs"], L["Mainhand Buff"], false, true, false, nil, nil, true)
    BuffEnough:TrackItem(L["Buffs"], L["Offhand Buff"], false, true, false, nil, nil, true)

    local itemLink = GetInventoryItemLink("player", thrownSlotId)
    -- Check thrown weapon but only if they don't have the talent that uses main hand poison.
    if itemLink and select(9, GetItemInfo(itemLink)) == "INVTYPE_THROWN" and select(5, GetTalentInfo(1, 10)) ~= 3 then
       BuffEnough:TrackItem(L["Buffs"], L["Thrown Weapon Buff"], false, true, false, nil, nil, true)
    end
end
