$execute as @s[tag=!hop.too_far] positioned $(destX) $(destY) $(destZ) positioned ~ ~1 ~ if block ~ ~ ~ $(carpet) if block ~ ~-1 ~ minecraft:lodestone if entity @n[tag=hop.gateway,distance=..1] run return 1
return fail