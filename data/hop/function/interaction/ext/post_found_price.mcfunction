execute as @s[tag=hop.infinity] run tag @s add ulg.t16
tag @s remove hop.infinity

execute as @s[tag=ulg.t16] run function hop:interaction/calc_time
execute as @s[tag=ulg.t16] run scoreboard players set @s hop.fuel_cost 0

tag @s[tag=ulg.t16] add hop.infinity
tag @s remove ulg.t16