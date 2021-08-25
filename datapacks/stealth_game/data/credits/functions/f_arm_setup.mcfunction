kill @e[tag=pl]
kill @e[tag=falcon_helmet]
summon minecraft:armor_stand 61 70 -25 {Tags:["credits","pl","show_details"],NoBasePlate:1,ShowArms:1,Rotation:[90.0f,0.0f],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"FalconReign"}}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1}
summon minecraft:armor_stand 61 70.05 -25 {Tags:["credits","falcon_helmet"],NoBasePlate:1,ShowArms:0,Invisible:1b,Rotation:[90.0f,0.0f],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:16}}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1}
scoreboard objectives add pl dummy
scoreboard objectives add pl2 dummy
scoreboard objectives add pld dummy
scoreboard objectives add pld2 dummy
scoreboard players set $direction pld 1
data merge entity @e[tag=pl,limit=1] {Pose:{RightArm:[-120.0f,40.0f,55.0f],LeftArm:[-70.0f,-50.0f,0.0f]}}
##R -120, 40, x L x, -50, 0
replaceitem entity @e[tag=pl] armor.feet leather_boots{display:{color:4929331}}
replaceitem entity @e[tag=pl] armor.chest leather_chestplate{display:{color:10592399}}
replaceitem entity @e[tag=pl] armor.legs iron_leggings
replaceitem entity @e[tag=pl] weapon.mainhand trident{Enchantments:[{id:"l",lvl:1}]}