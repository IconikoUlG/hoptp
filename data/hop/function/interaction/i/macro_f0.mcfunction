execute store result score #t ulg.t run data get storage ulg:hoptp t.SelectedItem.components."minecraft:custom_data"."hop:fuel".value
execute store result score #c ulg.t run data get storage ulg:hoptp t.SelectedItem.count

scoreboard players operation #t ulg.t *= #c ulg.t

item replace entity @p[tag=ulg.t72,gamemode=!creative] weapon.mainhand with minecraft:air

scoreboard players operation @s hop.fuel += #t ulg.t
title @p[tag=ulg.t72] actionbar ["",{"text":"+","color":"green"},{"score":{"name":"#t","objective":"ulg.t"},"color":"green"},{"text":" ","color":"green"},{"text":"[ ","underlined":true,"color":"blue"},{"score":{"name":"@s","objective":"hop.fuel"},"underlined":true,"color":"blue"},{"text":" / ","underlined":true,"color":"blue"},{"score":{"name":"@s","objective":"hop.fuel_cost"},"bold":true,"underlined":true,"color":"blue"},{"text":" ]","underlined":true,"color":"blue"}]