scoreboard players operation #t ulg.t = @s ulg.foo
scoreboard players operation #t ulg.t /= @s ulg.bar
execute if score #t ulg.t >= @s ulg.bar run return run function hop:marker/finding_price_s

scoreboard players add @s ulg.bar 5