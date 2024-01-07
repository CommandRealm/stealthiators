execute as @e[type=minecraft:armor_stand,tag=running,scores={tutorial=0}] at @s store result score @s running_leg run data get entity @s Pose.RightLeg[0]
scoreboard players add @e[type=minecraft:armor_stand,tag=running,scores={tutorial=0}] running_leg 15
scoreboard players operation @e[type=minecraft:armor_stand,tag=running,limit=1] running_leg *= -1 tutorial
execute as @e[type=minecraft:armor_stand,tag=running,scores={tutorial=0}] at @s store result entity @s Pose.LeftLeg[0] float 1 run scoreboard players get @s running_leg
scoreboard players operation @e[type=minecraft:armor_stand,tag=running,limit=1] running_leg *= -1 tutorial
execute as @e[type=minecraft:armor_stand,tag=running,scores={tutorial=0}] at @s store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get @s running_leg
scoreboard players set @e[type=minecraft:armor_stand,tag=running,scores={running_leg=85..}] tutorial 1
return 1