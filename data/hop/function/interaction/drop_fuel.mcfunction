summon minecraft:item ~ ~0.2 ~ {Item:{id:"minecraft:flint",count:1,components:{"minecraft:custom_name":'{"text":"Fuel","obfuscated":true}',"minecraft:enchantments":{power:1}}},Tags:["ulg.t54"]}
execute store result entity @n[type=minecraft:item,tag=ulg.t54] Item.components."minecraft:custom_data"."hop:fuel".value int 1 run scoreboard players get @s hop.fuel
tag @e remove ulg.t54