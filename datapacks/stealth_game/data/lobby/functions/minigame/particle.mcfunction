scoreboard players remove $number particle_limit 1
particle minecraft:dust 1 0 0 1.15 ~ ~ ~ 0 0 0 0 1 force @a
execute if score $number particle_limit matches 1.. rotated ~ ~15 positioned ^ ^ ^0.25 run function lobby:minigame/particle
return 1