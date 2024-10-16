$execute positioned $(destX) $(destY) $(destZ) positioned ~ ~1 ~ run tp @p[tag=ulg.t99] ~ ~ ~
tag @p[tag=ulg.t99] add ulg.hop.post_tp
$execute as @n[type=minecraft:interaction,tag=hop.gateway,scores={ulg.var=$(id)}] run scoreboard players operation @s hop.fuel -= @s hop.fuel_cost

execute unless data storage ulg:hoptp config.tell{waitTime:true} run return 1
title @p[tag=ulg.t99] actionbar {"text":"\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae\u25ae","color":"#0AFFE2"}