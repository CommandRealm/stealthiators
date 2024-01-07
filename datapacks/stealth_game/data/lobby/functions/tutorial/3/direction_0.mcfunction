execute as @e[type=minecraft:armor_stand,tag=tutorial_3_2,scores={tutorial=0}] at @s store result score @s running_leg run data get entity @s Pose.Head[1]
scoreboard players add @e[type=minecraft:armor_stand,tag=tutorial_3_2,scores={tutorial=0}] running_leg 1
execute as @e[type=minecraft:armor_stand,tag=tutorial_3_2,scores={tutorial=0}] at @s store result entity @s Pose.Head[1] float 1 run scoreboard players get @s running_leg
scoreboard players set @e[type=minecraft:armor_stand,tag=tutorial_3_2,scores={running_leg=30..}] tutorial 1
return 1