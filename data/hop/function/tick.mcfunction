execute as @e[type=minecraft:marker,tag=hop.gateway] at @s run function hop:marker/tick
execute as @e[type=minecraft:interaction,tag=hop.gateway] at @s run function hop:interaction/tick

execute as @a[tag=ulg.hop.post_tp] at @s unless entity @n[tag=hop.gateway,distance=..0.5] run tag @s remove ulg.hop.post_tp