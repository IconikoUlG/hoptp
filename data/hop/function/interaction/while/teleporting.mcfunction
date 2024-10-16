tp @s ~ ~ ~ ~10 0
particle minecraft:soul_fire_flame ^ ^0.3 ^0.55 0 0.01 0 0 1 force

scoreboard players operation #t ulg.t = @s ulg.foo
scoreboard players operation #t ulg.t *= $hopTpParticles ulg.var
scoreboard players operation #t ulg.t /= @s hop.time_cost

data modify storage ulg:hoptp t.tp.p set from storage ulg:hoptp config.particles.tp
execute store result storage ulg:hoptp t.tp.v int 1 run scoreboard players get #t ulg.t

function hop:interaction/while/tping_macro with storage ulg:hoptp t.tp