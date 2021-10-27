kill @e[tag=check]
summon minecraft:armor_stand 61 70 -27 {Tags:["credits","check","show_details"],NoBasePlate:1,ShowArms:1,Rotation:[90.0f,0.0f],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1646376287,1123369571,-1089094541,-307423331],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTAyMGMxMjczNTc1NDA5NzczZDJmZmMxNTUzNWQ2YjI3MzM5OTMzODU2ZTFlYTY3YmNmODdkZWNhMGUyNGNhOCJ9fX0="}]}}}}],Pose:{RightArm:[210.0f,99.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[210.0f,271.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[-10.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1}


##data merge entity @e[tag=check,limit=1] {Pose:{RightArm:[-120.0f,40.0f,55.0f],LeftArm:[-70.0f,-50.0f,0.0f]}}

item replace entity @e[tag=check] armor.feet with iron_boots{display:{color:4929331}}
item replace entity @e[tag=check] armor.chest with leather_chestplate{display:{color:7241373}}
item replace entity @e[tag=check] armor.legs with leather_leggings{display:{color:12563846}}