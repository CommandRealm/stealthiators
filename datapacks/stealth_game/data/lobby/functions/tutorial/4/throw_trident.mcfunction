summon minecraft:armor_stand 184 80.25 -109 {Motion:[-0.7d,0.0d,-0.3d],NoBasePlate:1b,Tags:["tutorial_4_3"],Invisible:1b,DisabledSlots:2039583,Invulnerable:1b,HandItems:[{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:x",lvl:1s}]},Count:1b},{}],Pose:{RightArm:[200.0f,180.0f,340.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],Head:[2.0f,0.0f,0.0f]},Rotation:[115.0f,0.0f]}
item replace entity @e[type=minecraft:armor_stand,tag=tutorial_4_2] weapon.mainhand with minecraft:air
scoreboard players set 4 tutorial 1
execute at @e[type=minecraft:armor_stand,tag=tutorial_4_2] run playsound minecraft:item.trident.throw master @a 181 80 -111 1 1
return 1