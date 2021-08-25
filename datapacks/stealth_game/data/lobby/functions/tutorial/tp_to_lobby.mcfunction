tp @s 42 68 -40 75 -30
effect give @s slow_falling 1 255 true
playsound minecraft:custom.teleport master @s ~ ~ ~ 10000 1
execute at @s run particle minecraft:witch ~ ~ ~ 0.25 0.2 0.25 0.5 25 
advancement grant @s only minecraft:custom/complete_tutorial