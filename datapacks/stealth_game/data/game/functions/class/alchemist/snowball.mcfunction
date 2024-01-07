execute as @e[type=minecraft:snowball,tag=alchemist_snowball] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0.05 1
execute as @e[type=minecraft:snowball,tag=alchemist_snowball] at @s if entity @a[distance=..3,team=gladiator] run function game:class/alchemist/found_gladiator

return 1