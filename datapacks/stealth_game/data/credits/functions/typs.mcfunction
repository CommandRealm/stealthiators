execute as @e[type=minecraft:armor_stand,tag=typs] at @s store result score @s pl run data get entity @s Pose.RightArm[0]
execute if score $direction typs_direction matches 0 run function credits:typs_0
execute if score $direction typs_direction matches 1 run function credits:typs_1
execute as @e[type=minecraft:armor_stand,tag=typs] store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s typs_direction

return 1