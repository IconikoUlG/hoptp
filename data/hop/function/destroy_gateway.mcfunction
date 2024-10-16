$execute as @e[type=minecraft:interaction,tag=hop.gateway,scores={ulg.var=$(id)}] run function hop:interaction/pre_destroy
$data remove storage ulg:hoptp gates[{id:$(id)}]
$kill @e[tag=hop.gateway,scores={ulg.var=$(id)}]
$msg @a[tag=ulg.admin] Destroyed gateway n.$(id)