tp @s ~ ~ ~ ~10 0
particle minecraft:soul_fire_flame ^ ^0.3 ^0.55 0 0.01 0 0 1 force

scoreboard players operation #t ulg.t = @s ulg.foo
scoreboard players operation #t ulg.t *= $hopTpParticles ulg.var
scoreboard players operation #t ulg.t /= @s hop.time_cost

data modify storage ulg:hoptp t.tp.p set from storage ulg:hoptp config.particles.tp
execute store result storage ulg:hoptp t.tp.v int 1 run scoreboard players get #t ulg.t

function hop:interaction/while/macro_tping1 with storage ulg:hoptp t.tp

execute unless data storage ulg:hoptp config.tell{waitTime:true} run return 1

scoreboard players operation #t1 ulg.t = @s ulg.foo
scoreboard players operation #t1 ulg.t *= #100 ulg.var
scoreboard players operation #t1 ulg.t /= @s hop.time_cost

data modify storage ulg:hoptp t.tell.wait set value {s0:"▮",s1:"",s2:"",s3:"",s4:"",s5:"",s6:""}

execute if score #t1 ulg.t matches 20.. run data modify storage ulg:hoptp t.tell.wait.s1 set value "▮"
execute if score #t1 ulg.t matches 40.. run data modify storage ulg:hoptp t.tell.wait.s2 set value "▮"
execute if score #t1 ulg.t matches 55.. run data modify storage ulg:hoptp t.tell.wait.s3 set value "▮"
execute if score #t1 ulg.t matches 70.. run data modify storage ulg:hoptp t.tell.wait.s4 set value "▮"
execute if score #t1 ulg.t matches 85.. run data modify storage ulg:hoptp t.tell.wait.s5 set value "▮"
execute if score #t1 ulg.t matches 95.. run data modify storage ulg:hoptp t.tell.wait.s6 set value "▮"

function hop:interaction/while/macro_tping2 with storage ulg:hoptp t.tell.wait