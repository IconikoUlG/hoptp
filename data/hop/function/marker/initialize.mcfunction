execute store result entity @s data.packet.id int 1 run scoreboard players get @s ulg.var
data modify entity @s data.packet.posX set from entity @s Pos[0]
data modify entity @s data.packet.posY set from entity @s Pos[1]
data modify entity @s data.packet.posZ set from entity @s Pos[2]

execute if block ~ ~ ~ minecraft:white_carpet run data modify entity @s data.packet.carpet set value "minecraft:white_carpet"
execute if block ~ ~ ~ minecraft:orange_carpet run data modify entity @s data.packet.carpet set value "minecraft:orange_carpet"
execute if block ~ ~ ~ minecraft:magenta_carpet run data modify entity @s data.packet.carpet set value "minecraft:magenta_carpet"
execute if block ~ ~ ~ minecraft:light_blue_carpet run data modify entity @s data.packet.carpet set value "minecraft:light_blue_carpet"
execute if block ~ ~ ~ minecraft:yellow_carpet run data modify entity @s data.packet.carpet set value "minecraft:yellow_carpet"
execute if block ~ ~ ~ minecraft:lime_carpet run data modify entity @s data.packet.carpet set value "minecraft:lime_carpet"
execute if block ~ ~ ~ minecraft:pink_carpet run data modify entity @s data.packet.carpet set value "minecraft:pink_carpet"
execute if block ~ ~ ~ minecraft:gray_carpet run data modify entity @s data.packet.carpet set value "minecraft:gray_carpet"
execute if block ~ ~ ~ minecraft:light_gray_carpet run data modify entity @s data.packet.carpet set value "minecraft:light_gray_carpet"
execute if block ~ ~ ~ minecraft:cyan_carpet run data modify entity @s data.packet.carpet set value "minecraft:cyan_carpet"
execute if block ~ ~ ~ minecraft:purple_carpet run data modify entity @s data.packet.carpet set value "minecraft:purple_carpet"
execute if block ~ ~ ~ minecraft:blue_carpet run data modify entity @s data.packet.carpet set value "minecraft:blue_carpet"
execute if block ~ ~ ~ minecraft:brown_carpet run data modify entity @s data.packet.carpet set value "minecraft:brown_carpet"
execute if block ~ ~ ~ minecraft:green_carpet run data modify entity @s data.packet.carpet set value "minecraft:green_carpet"
execute if block ~ ~ ~ minecraft:red_carpet run data modify entity @s data.packet.carpet set value "minecraft:red_carpet"
execute if block ~ ~ ~ minecraft:black_carpet run data modify entity @s data.packet.carpet set value "minecraft:black_carpet"