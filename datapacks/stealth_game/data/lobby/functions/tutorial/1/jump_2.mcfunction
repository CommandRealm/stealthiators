execute as @e[type=armor_stand,tag=tutorial_1_1] at @s run data modify entity @s Motion[0] set value 0.15
execute as @e[type=armor_stand,tag=tutorial_1_1] at @s run data merge entity @s {Pose:{RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}
tag @e[type=armor_stand,tag=tutorial_1_1] remove running