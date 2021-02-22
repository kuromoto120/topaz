-----------------------------------
-- Area: Ru'Lude Gardens
--  NPC: Magian Moogle (Blue Bobble)
-- Type: Magian Trials NPC (Relic Armor)
-- !pos -6.843 2.459 121.9 64
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/keyitems")
require("scripts/globals/magiantrials")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    if ENABLE_MAGIAN_TRIALS ~= 1 then
        return
    end

    if trade:getItemCount() == 1 then
        local ItemID = trade:getItemId()
        local TrialInfo = getRelicTrialInfo(ItemID)
        local invalid = 0
        if (TrialInfo.t1 == 0 and TrialInfo.t2 == 0 and TrialInfo.t3 == 0 and TrialInfo.t4 == 0) then
            invalid = 1
        end
        player:startEvent(10143, TrialInfo.t1, TrialInfo.t2, TrialInfo.t3, TrialInfo.t4, 0, ItemID, 0, invalid)
    else
        -- placeholder for multi item trades such as "Forgotten Hope" etc.
    end
end

entity.onTrigger = function(player, npc)
    if ENABLE_MAGIAN_TRIALS ~= 1 then
        return
    end

    if (player:hasKeyItem(tpz.ki.MAGIAN_TRIAL_LOG) == false) then
        player:startEvent(10141)
    else
        player:startEvent(10142) -- parameters unknown
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
