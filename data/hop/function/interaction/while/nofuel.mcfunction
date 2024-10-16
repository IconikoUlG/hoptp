
tp @s ~ ~ ~ ~10 0
execute if predicate {"condition":"minecraft:random_chance","chance":0.2} run particle minecraft:small_flame ^ ^0.3 ^0.4 0.01 0.01 0.01 0.0001 1 force

particle minecraft:dust_color_transition{scale:0.3f,from_color:[0.180,1.000,1.000],to_color:[0.208,0.545,0.631]} ^ ^0.1 ^0.2 0 0 0 0.2 1 force
particle minecraft:dust_color_transition{scale:0.3f,from_color:[0.180,1.000,1.000],to_color:[0.208,0.545,0.631]} ^ ^0.1 ^-0.2 0 0 0 0.2 1 force
particle minecraft:dust_color_transition{scale:0.3f,from_color:[0.180,1.000,1.000],to_color:[0.208,0.545,0.631]} ^0.2 ^0.1 ^ 0 0 0 0.2 1 force
particle minecraft:dust_color_transition{scale:0.3f,from_color:[0.180,1.000,1.000],to_color:[0.208,0.545,0.631]} ^-0.2 ^0.1 ^ 0 0 0 0.2 1 force