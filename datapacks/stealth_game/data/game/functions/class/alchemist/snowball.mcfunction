execute as @e[type=snowball,tag=alchemist_snowball] at @s run particle smoke ~ ~ ~ 0 0 0 0.05 1
execute as @e[type=snowball,tag=alchemist_snowball] at @s if entity @a[team=gladiator,distance=..3] run function game:class/alchemist/found_gladiator
