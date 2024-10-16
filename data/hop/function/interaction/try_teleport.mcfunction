execute if score @s hop.fuel < @s hop.fuel_cost run return fail

execute unless score @s ulg.foo matches 1.. as @n[type=minecraft:marker,tag=hop.gateway] at @s run function hop:marker/reload
execute as @s[tag=!hop.valid] run return run scoreboard players set @s ulg.foo 0
execute unless score @s ulg.foo matches 1.. run function hop:interaction/calc_time

#other
execute if score @s ulg.foo >= @s hop.time_cost as @n[type=minecraft:marker,tag=hop.gateway] run function hop:marker/try_tp_player
execute if score @s ulg.foo >= @s hop.time_cost as @n[type=minecraft:marker,tag=hop.gateway] run scoreboard players set @s ulg.foo 0

scoreboard players add @s ulg.foo 1