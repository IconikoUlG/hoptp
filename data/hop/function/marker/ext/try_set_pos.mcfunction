#called from interaction/i/macro
tag @s remove hop.too_far

data modify entity @s data.packet.destination set \
from storage ulg:hoptp t.SelectedItem.components."minecraft:lodestone_tracker".target.pos
data modify entity @s data.packet.destX set from entity @s data.packet.destination[0]
data modify entity @s data.packet.destY set from entity @s data.packet.destination[1]
data modify entity @s data.packet.destZ set from entity @s data.packet.destination[2]
data modify entity @s data.packet.title set from storage ulg:hoptp t.SelectedItem.components."minecraft:custom_name"
execute unless data storage ulg:hoptp t.SelectedItem.components."minecraft:custom_name" \
run function hop:marker/build_title_macro with entity @s data.packet

#calc distance

execute store result score #x ulg.t run data get entity @s data.packet.posX 1
execute store result score #y ulg.t run data get entity @s data.packet.posY 1
execute store result score #z ulg.t run data get entity @s data.packet.posZ 1
execute store result score #dx ulg.t run data get entity @s data.packet.destX 1
execute store result score #dy ulg.t run data get entity @s data.packet.destY 1
execute store result score #dz ulg.t run data get entity @s data.packet.destZ 1

scoreboard players operation #dx ulg.t -= #x ulg.t
scoreboard players operation #dy ulg.t -= #y ulg.t
scoreboard players operation #dz ulg.t -= #z ulg.t

scoreboard players operation #dx ulg.t *= #dx ulg.t
scoreboard players operation #dy ulg.t *= #dy ulg.t
scoreboard players operation #dz ulg.t *= #dz ulg.t

scoreboard players operation @s ulg.foo = #dx ulg.t
scoreboard players operation @s ulg.foo += #dy ulg.t
scoreboard players operation @s ulg.foo += #dz ulg.t

execute if score @s ulg.foo > $maxHopDistance ulg.var run tag @s add hop.too_far
scoreboard players set @s ulg.bar 0
tag @s[tag=!hop.too_far] add hop.finding_price

function hop:marker/ext/macro_tsp with entity @s data.packet

#reload
function hop:marker/reload

item modify entity @p[tag=t.72,nbt={SelectedItem:{id:"minecraft:compass"}}] weapon.mainhand {\
    "function": "minecraft:set_components",\
    "components": {\
      "minecraft:lodestone_tracker": {}\
    }\
  }