#particle minecraft:block_marker{block_state:"minecraft:barrier"} ~ ~ ~ 0 0 0 0 1 force

tag @e remove ulg.t51
summon minecraft:marker ~ ~ ~ {Tags:["ulg.t51","hop.gateway"]}
summon minecraft:interaction ~ ~ ~ {Tags:["ulg.t51","hop.gateway"],response:1b,width:0.8f,height:0.5f}
summon minecraft:text_display ~ ~ ~ {Tags:["ulg.t51","hop.gateway"],billboard:"center",view_range:0.2f,text:'"?"',transformation:{scale:[0.8f,0.8f,0.8f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f]}}

scoreboard players add $gatewayCounter ulg.var 1
scoreboard players operation @e[tag=hop.gateway,tag=ulg.t51,sort=nearest,limit=3] ulg.var = $gatewayCounter ulg.var

scoreboard players set @n[type=minecraft:interaction,tag=ulg.t51] hop.fuel 0
execute as @n[type=minecraft:marker,tag=ulg.t51] run function hop:marker/initialize

tag @e remove ulg.t51