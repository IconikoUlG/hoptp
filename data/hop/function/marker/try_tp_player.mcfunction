function hop:marker/reload

execute unless entity @s[tag=hop.valid] run return fail

execute at @s run tag @p[distance=..0.4,gamemode=!spectator,tag=!ulg.hop.post_tp] add ulg.t99
function hop:marker/route_macro with entity @s data.packet

tag @a remove ulg.t99