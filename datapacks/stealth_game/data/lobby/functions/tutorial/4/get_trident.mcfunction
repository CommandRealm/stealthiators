kill @e[type=minecraft:armor_stand,tag=tutorial_4_3]
item replace entity @e[type=minecraft:armor_stand,tag=tutorial_4_2] weapon.mainhand with minecraft:trident{Enchantments:[{id:"minecraft:x",lvl:1s}]}

summon minecraft:armor_stand 180 80 -111 {NoBasePlate:1b,Tags:["tutorial_4_4"],Invisible:1b,DisabledSlots:2039583,Invulnerable:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{},{},{}],Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]},ShowArms:1b,Rotation:[90.0f,0.0f]}
team join lobby @e[type=minecraft:armor_stand,tag=tutorial_4_4]
execute at @e[type=minecraft:armor_stand,tag=tutorial_4_4] run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 0.15 1
execute at @e[type=minecraft:armor_stand,tag=tutorial_4_4] run particle minecraft:witch ~ ~ ~ 0.05 0.05 0.05 0.25 15
return 1