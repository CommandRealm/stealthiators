execute as @e[type=minecraft:armor_stand,tag=tutorial_4_2,scores={tutorial=0}] at @s store result score @s running_leg run data get entity @s Pose.RightArm[0]
scoreboard players add @e[type=minecraft:armor_stand,tag=tutorial_4_2,scores={tutorial=0}] running_leg 3
execute as @e[type=minecraft:armor_stand,tag=tutorial_4_2,scores={tutorial=0}] at @s store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s running_leg
execute as @e[type=minecraft:armor_stand,tag=tutorial_4_2,scores={running_leg=144..160}] at @s unless entity @s[nbt={HandItems:[{id:"minecraft:trident"}]}] run function lobby:tutorial/4/get_trident
execute if entity @e[type=minecraft:armor_stand,tag=tutorial_4_2,scores={running_leg=200..}] run function lobby:tutorial/4/throw_trident
scoreboard players set @e[type=minecraft:armor_stand,tag=tutorial_4_2,scores={running_leg=200..}] tutorial 1
return 1