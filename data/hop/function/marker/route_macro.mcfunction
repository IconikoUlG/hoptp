$execute positioned $(destX) $(destY) $(destZ) positioned ~ ~1 ~ run tp @p[tag=ulg.t99] ~ ~ ~
tag @p[tag=ulg.t99] add ulg.hop.post_tp
$execute as @n[type=minecraft:interaction,tag=hop.gateway,scores={ulg.var=$(id)}] run scoreboard players operation @s hop.fuel -= @s hop.fuel_cost