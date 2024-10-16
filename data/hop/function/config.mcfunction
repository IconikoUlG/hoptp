#cost every x blocks
scoreboard players set $var hop.fuel_cost 3
scoreboard players set $x hop.fuel_cost 200
#time for tp, calculated as -> (fuel_cost*multiplier)/divider + base
scoreboard players set $base hop.time_cost 20
scoreboard players set $multiplier hop.time_cost 1
scoreboard players set $divider hop.time_cost 2

#max hop distance value (set as power by two, for instance d = 100, power -> 10000 (d*d))
scoreboard players set $maxHopDistance ulg.var 1000000

#particles on tp animation
scoreboard players set $hopTpParticles ulg.var 100

data modify storage ulg:hoptp config.fuels set value {\
    "minecraft:emerald": 50,\
    "minecraft:diamond": 20,\
    "minecraft:ender_pearl": 10,\
    "minecraft:redstone": 1,\
    "minecraft:amethyst_shard": 5\
}

data modify storage ulg:hoptp config.particles.tp set value "minecraft:soul_fire_flame"