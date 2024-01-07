kill @e[tag=pl]
kill @e[tag=falcon_helmet]
summon minecraft:armor_stand 61 70 -25 {Tags:["credits","pl","show_details"],NoBasePlate:1b,ShowArms:1b,Rotation:[90.0f,0.0f],NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",tag:{SkullOwner:"FalconReign"},Count:1b}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1b}
summon minecraft:armor_stand 61 70.05 -25 {Tags:["credits","falcon_helmet"],NoBasePlate:1b,ShowArms:0b,Invisible:1b,Rotation:[90.0f,0.0f],NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16},Count:1b}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1b}
scoreboard objectives add pl dummy
scoreboard objectives add pl2 dummy
scoreboard objectives add pld dummy
scoreboard objectives add pld2 dummy
scoreboard players set $direction pld 1
data merge entity @e[tag=pl,limit=1] {Pose:{RightArm:[-120.0f,40.0f,55.0f],LeftArm:[-70.0f,-50.0f,0.0f]}}
##R -120, 40, x L x, -50, 0
item replace entity @e[tag=pl] armor.feet with minecraft:leather_boots{display:{color:4929331}}
item replace entity @e[tag=pl] armor.chest with minecraft:leather_chestplate{display:{color:10592399}}
item replace entity @e[tag=pl] armor.legs with minecraft:iron_leggings
item replace entity @e[tag=pl] weapon.mainhand with minecraft:trident{Enchantments:[{id:"minecraft:l",lvl:1s}]}
return 1