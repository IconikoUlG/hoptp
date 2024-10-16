$execute unless data storage ulg:hoptp config.fuels."$(id)" run return fail

$execute store result score #t ulg.t run data get storage ulg:hoptp config.fuels."$(id)"

execute unless entity @p[tag=ulg.t72,predicate=hop:pl_sneaking] run function hop:interaction/if_macro1 with storage ulg:hoptp t.SelectedItem
execute if entity @p[tag=ulg.t72,predicate=hop:pl_sneaking] run function hop:interaction/if_macro2 with storage ulg:hoptp t.SelectedItem

scoreboard players operation @s hop.fuel += #t ulg.t
title @p[tag=ulg.t72] actionbar ["",{"text":"+","color":"green"},{"score":{"name":"#t","objective":"ulg.t"},"color":"green"},{"text":" ","color":"green"},{"text":"[ ","underlined":true,"color":"blue"},{"score":{"name":"@s","objective":"hop.fuel"},"underlined":true,"color":"blue"},{"text":" / ","underlined":true,"color":"blue"},{"score":{"name":"@s","objective":"hop.fuel_cost"},"bold":true,"underlined":true,"color":"blue"},{"text":" ]","underlined":true,"color":"blue"}]