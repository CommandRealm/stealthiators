execute as @e[type=minecraft:armor_stand,tag=focii] at @s store result score @s focii_leg run data get entity @s Pose.RightLeg[0]
scoreboard players remove @e[type=minecraft:armor_stand,tag=focii] focii_leg 25
scoreboard players operation @e[type=minecraft:armor_stand,tag=focii,limit=1] focii_leg *= -1 focii_direction
execute as @e[type=minecraft:armor_stand,tag=focii] at @s store result entity @s Pose.LeftLeg[0] float 1 run scoreboard players get @s focii_leg
scoreboard players operation @e[type=minecraft:armor_stand,tag=focii,limit=1] focii_leg *= -1 focii_direction
execute as @e[type=minecraft:armor_stand,tag=focii] at @s store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get @s focii_leg
scoreboard players set @e[type=minecraft:armor_stand,tag=focii,scores={focii_leg=..-85}] focii_direction 0
return 1