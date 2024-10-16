execute if score @s hop.fuel < @s hop.fuel_cost run return run function hop:interaction/while/nofuel
execute if entity @n[type=minecraft:marker,tag=hop.finding_price,distance=..0.1] run return run function hop:interaction/while/findingprice
execute unless score @s ulg.foo matches 0 run return run function hop:interaction/while/teleporting

function hop:interaction/while/valid