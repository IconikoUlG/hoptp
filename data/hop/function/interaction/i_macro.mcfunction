tag @a remove ulg.t72
$tag @a[nbt={UUID:$(player)},distance=..10] add ulg.t72

data modify storage ulg:hoptp t.SelectedItem set from entity @a[tag=ulg.t72,limit=1] SelectedItem
execute store result storage ulg:hoptp t.id int 1 run scoreboard players get @s ulg.var
execute unless data storage ulg:hoptp t.SelectedItem.components."minecraft:lodestone_tracker".target.pos if data storage ulg:hoptp t.SelectedItem.id run function hop:interaction/i_fueltry_macro with storage ulg:hoptp t.SelectedItem
execute if data storage ulg:hoptp t.SelectedItem.components."minecraft:lodestone_tracker".target.pos as @n[type=minecraft:marker,tag=hop.gateway,distance=..0.1] run function hop:marker/try_set_pos

tag @a remove ulg.t72