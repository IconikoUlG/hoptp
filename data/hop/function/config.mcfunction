#cost every x blocks
scoreboard players set $var hop.fuel_cost 1
scoreboard players set $x hop.fuel_cost 100
#time for tp, calculated as -> (fuel_cost*multiplier)/divider + base
scoreboard players set $base hop.time_cost 20
scoreboard players set $multiplier hop.time_cost 1
scoreboard players set $divider hop.time_cost 3
#max calculated time (in ticks) 100 = 5 seconds
scoreboard players set $max hop.time_cost 1000

#max hop distance value (set as power by two, for instance d = 100, power -> 10000 (d*d))
scoreboard players set $maxHopDistance ulg.var 8000000

#particles on tp animation
scoreboard players set $hopTpParticles ulg.var 100

data modify storage ulg:hoptp config.fuels set value {\
    "minecraft:redstone": 1,\
    "minecraft:glowstone_dust": 2,\
    "minecraft:amethyst_shard": 5,\
    "minecraft:ender_pearl": 10,\
    "minecraft:chorus_fruit": 10,\
    "minecraft:blaze_powder": 10,\
    "minecraft:phantom_membrane": 20,\
    "minecraft:diamond": 35,\
    "minecraft:emerald": 50,\
    "minecraft:echo_shard": 50,\
    "minecraft:nether_star": 999999999\
}

data modify storage ulg:hoptp config.particles.tp set value "minecraft:soul_fire_flame"

data modify storage ulg:hoptp config.tell.waitTime set value true