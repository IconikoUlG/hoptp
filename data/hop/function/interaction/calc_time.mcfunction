scoreboard players operation @s hop.time_cost = @s hop.fuel_cost
scoreboard players operation @s hop.time_cost *= $multiplier hop.time_cost
scoreboard players operation @s hop.time_cost /= $divider hop.time_cost
execute unless score @s hop.time_cost matches 0.. run scoreboard players set @s hop.time_cost 0
scoreboard players operation @s hop.time_cost += $base hop.time_cost
execute unless score @s hop.time_cost matches 0.. run scoreboard players set @s hop.time_cost 0