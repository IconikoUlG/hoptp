#called from destroy_gateway.mcfunction
execute if score @s hop.fuel matches 1.. at @s run function hop:interaction/drop_fuel