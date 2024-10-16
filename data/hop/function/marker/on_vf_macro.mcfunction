$data remove storage ulg:hoptp gates[{id:$(id)}]

data modify entity @n[type=minecraft:text_display,distance=..1] text set value '"?"'
$tag @e[tag=hop.gateway,scores={ulg.var=$(id)},distance=..1.5] remove hop.valid