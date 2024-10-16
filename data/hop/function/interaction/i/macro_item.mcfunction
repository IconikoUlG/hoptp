execute as @s[tag=hop.infinity] run return run function hop:interaction/i/tell_infinite

execute if data storage ulg:hoptp t.SelectedItem.components."minecraft:custom_data"."hop:fuel".value run return run function hop:interaction/i/macro_f0

$execute unless data storage ulg:hoptp config.fuels."$(id)" run return fail

$execute store result score #t ulg.t run data get storage ulg:hoptp config.fuels."$(id)"

execute unless entity @p[tag=ulg.t72,predicate=hop:pl_sneaking] run function hop:interaction/i/macro_f1 with storage ulg:hoptp t.SelectedItem
execute if entity @p[tag=ulg.t72,predicate=hop:pl_sneaking] run function hop:interaction/i/macro_f2 with storage ulg:hoptp t.SelectedItem

scoreboard players operation @s hop.fuel += #t ulg.t
execute if score @s hop.fuel matches 999999999.. run function hop:interaction/i/make_infinite

title @p[tag=ulg.t72] actionbar ["",{"text":"+","color":"green"},{"score":{"name":"#t","objective":"ulg.t"},"color":"green"},{"text":" ","color":"green"},{"text":"[ ","underlined":true,"color":"blue"},{"score":{"name":"@s","objective":"hop.fuel"},"underlined":true,"color":"blue"},{"text":" / ","underlined":true,"color":"blue"},{"score":{"name":"@s","objective":"hop.fuel_cost"},"bold":true,"underlined":true,"color":"blue"},{"text":" ]","underlined":true,"color":"blue"}]