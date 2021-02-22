-----------------------------------
-- Area: Windurst Waters
--   NPC: Serukoko
-- Type: Standard NPC
-- !pos -54.916 -7.499 114.855 238
-----------------------------------
-- Auto-Script: Requires Verification (Verfied By Brawndo)
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    player:startEvent(373)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
