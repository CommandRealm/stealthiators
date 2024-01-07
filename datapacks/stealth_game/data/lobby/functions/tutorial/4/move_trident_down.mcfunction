execute as @e[type=minecraft:armor_stand,tag=tutorial_4_3] at @s run data modify entity @s Pos[1] set value 79.5d
execute as @e[type=minecraft:armor_stand,tag=tutorial_4_3] at @s run data merge entity @s {NoGravity:1b}
return 1