execute if entity @e[type=minecraft:armor_stand,tag=tutorial_3_2,scores={tutorial=0}] run function lobby:tutorial/3/direction_0
execute if entity @e[type=minecraft:armor_stand,tag=tutorial_3_2,scores={tutorial=1}] run function lobby:tutorial/3/direction_1
execute as @e[type=minecraft:armor_stand,tag=tutorial_3_1] at @s run data modify entity @s Pose.Head[1] set from entity @e[type=minecraft:armor_stand,tag=tutorial_3_2,limit=1] Pose.Head[1]
return 1