#old ulg_gen
scoreboard objectives add ulg.var dummy
scoreboard objectives add ulg.foo dummy
scoreboard objectives add ulg.bar dummy
#old ulg_intick
scoreboard objectives add ulg.t dummy

scoreboard objectives add hop.fuel dummy
scoreboard objectives add hop.fuel_cost dummy
scoreboard objectives add hop.time_cost dummy

schedule function hop:every1s 1s replace

scoreboard players set #100 ulg.var 100

function hop:config