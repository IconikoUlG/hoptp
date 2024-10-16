execute unless entity @n[type=minecraft:marker,tag=hop.gateway,distance=..0.1] run function hop:opt/destroy_self

execute as @s[tag=!hop.valid] run function hop:interaction/on_unset
execute as @s[tag=hop.valid] run function hop:interaction/on_valid

execute if data entity @s attack.player run function hop:interaction/a/attack
execute if data entity @s interaction.player run function hop:interaction/i/interaction

execute if entity @a[distance=..0.4,gamemode=!spectator,tag=!ulg.hop.post_tp] run function hop:interaction/try_teleport
execute unless score @s ulg.foo matches 0 unless entity @a[distance=..0.4,gamemode=!spectator] run scoreboard players set @s ulg.foo 0