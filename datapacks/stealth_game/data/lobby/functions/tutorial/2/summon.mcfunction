execute at @e[type=armor_stand,tag=tutorial_2_1] run particle witch ~ ~ ~ 0.05 0.05 0.05 0.25 5
kill @e[type=armor_stand,tag=tutorial_2_1]
summon armor_stand 166.5 80 -108 {NoBasePlate:1b,Tags:["tutorial_2_1"],Invisible:1b,DisabledSlots:2039583,Invulnerable:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{},{},{}],Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[2.0f,0.0f,0.0f],LeftLeg:[-2.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]},ShowArms:1b,Rotation:[90.0f,0.0f]}
team join lobby @e[type=armor_stand,tag=tutorial_2_1]
scoreboard players set @e[type=armor_stand,tag=tutorial_2_1] tutorial 0
execute at @e[type=armor_stand,tag=tutorial_2_1] run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 0.15 1
execute at @e[type=armor_stand,tag=tutorial_2_1] run particle witch ~ ~ ~ 0.05 0.05 0.05 0.25 15