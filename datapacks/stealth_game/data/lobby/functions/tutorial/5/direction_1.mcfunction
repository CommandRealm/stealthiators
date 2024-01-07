execute as @e[type=minecraft:armor_stand,tag=tutorial_5_2,scores={tutorial=1}] at @s store result score @s running_leg run data get entity @s Pose.Head[1]
scoreboard players remove @e[type=minecraft:armor_stand,tag=tutorial_5_2,scores={tutorial=1}] running_leg 1
scoreboard players remove @e[type=minecraft:armor_stand,tag=tutorial_5_2,scores={tutorial=1,running_leg=0}] running_leg 1
execute as @e[type=minecraft:armor_stand,tag=tutorial_5_2,scores={tutorial=1}] at @s store result entity @s Pose.Head[1] float 1 run scoreboard players get @s running_leg
scoreboard players set @e[type=minecraft:armor_stand,tag=tutorial_5_2,scores={running_leg=..-30}] tutorial 0
return 1