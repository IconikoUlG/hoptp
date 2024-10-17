scoreboard players operation @s hop.fuel_cost = #t ulg.t
scoreboard players operation @s hop.fuel_cost *= $var hop.fuel_cost
scoreboard players operation @s hop.fuel_cost /= $x hop.fuel_cost
scoreboard players operation @n[type=minecraft:interaction,tag=hop.gateway,distance=..0.1] hop.fuel_cost = @s hop.fuel_cost
execute as @n[type=minecraft:interaction,tag=hop.gateway,distance=..0.1] run function hop:interaction/ext/post_found_price

tag @s remove hop.finding_price