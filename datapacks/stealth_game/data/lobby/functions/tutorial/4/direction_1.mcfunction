execute as @e[tag=tutorial_4_2,type=armor_stand,scores={tutorial=1}] at @s store result score @s running_leg run data get entity @s Pose.RightArm[0]
scoreboard players remove @e[tag=tutorial_4_2,type=armor_stand,scores={tutorial=1}] running_leg 8
execute as @e[tag=tutorial_4_2,type=armor_stand,scores={tutorial=1}] at @s store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s running_leg
scoreboard players set @e[tag=tutorial_4_2,type=armor_stand,scores={running_leg=..30}] tutorial 0