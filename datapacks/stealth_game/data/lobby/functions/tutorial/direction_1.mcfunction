execute as @e[tag=running,type=armor_stand] at @s store result score @s running_leg run data get entity @s Pose.RightLeg[0]
scoreboard players remove @e[tag=running,type=armor_stand] running_leg 15
scoreboard players operation @e[tag=running,type=armor_stand,limit=1] running_leg *= -1 tutorial
execute as @e[tag=running,type=armor_stand] at @s store result entity @s Pose.LeftLeg[0] float 1 run scoreboard players get @s running_leg
scoreboard players operation @e[tag=running,type=armor_stand,limit=1] running_leg *= -1 tutorial
execute as @e[tag=running,type=armor_stand] at @s store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get @s running_leg
scoreboard players set @e[tag=running,type=armor_stand,scores={running_leg=..-85}] tutorial 0