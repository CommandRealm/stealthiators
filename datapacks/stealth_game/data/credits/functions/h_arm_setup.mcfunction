kill @e[tag=hippeh]
summon minecraft:armor_stand 61 70 -21 {Tags:["credits","hippeh","show_details"],NoBasePlate:1b,ShowArms:1b,Rotation:[90.0f,0.0f],NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",tag:{SkullOwner:"Connop"},Count:1b}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1b}
scoreboard objectives add HArm1 dummy
scoreboard objectives add HArm2 dummy
scoreboard objectives add HArmD dummy
scoreboard objectives add HArmD2 dummy
scoreboard players add @e[tag=hippeh] HArmD 0
scoreboard players add @e[tag=hippeh] HArmD2 0
scoreboard players set @e[tag=hippeh,scores={HArmD=0}] HArmD 1
scoreboard players set @e[tag=hippeh,scores={HArmD2=0}] HArmD2 1
scoreboard players set @e[tag=hippeh] showdetails -100
data merge entity @e[tag=hippeh,limit=1] {Pose:{RightArm:[-30.0f,-150.0f,55.0f],LeftArm:[-20.0f,-120.0f,-40.0f]}}
item replace entity @e[tag=hippeh] armor.feet with minecraft:iron_boots
item replace entity @e[tag=hippeh] armor.chest with minecraft:leather_chestplate{display:{color:16711692}}
item replace entity @e[tag=hippeh] armor.legs with minecraft:golden_leggings
return 1