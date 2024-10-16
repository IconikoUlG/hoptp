$tag @e[tag=hop.gateway,scores={ulg.var=$(id)},distance=..1.5] add hop.valid

$data modify entity @n[type=minecraft:text_display,tag=hop.gateway,scores={ulg.var=$(id)},distance=..1.5] \
text set value '$(title)'
$data modify entity @n[type=minecraft:text_display,tag=hop.gateway,scores={ulg.var=$(id)},distance=..1.5] \
transformation.translation set value [0f,0.5f,0f]