execute at @e[type=minecraft:armor_stand,tag=tutorial_5_2] run particle minecraft:witch ~ ~ ~ 0.05 0.05 0.05 0.25 15
kill @e[tag=tutorial_5_1]
kill @e[tag=tutorial_5_2]
summon minecraft:armor_stand 188 80.05 -109 {NoGravity:1b,Tags:["tutorial_5_1"],Invisible:1b,DisabledSlots:2039583,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16},Count:1b}],Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],Head:[1.0f,0.0f,0.0f]},ShowArms:1b,Rotation:[80.0f,0.0f]}
summon minecraft:armor_stand 188 80 -109 {NoBasePlate:1b,Tags:["tutorial_5_2"],Invisible:0b,DisabledSlots:2039583,Invulnerable:1b,ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:leather_chestplate",tag:{display:{color:9209957}},Count:1b},{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1557211511,1441743481,-1420206844,721358116],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDk0N2RjOTgyM2I1Nzk2NjJlMzZhMTZkZmNlOTUxYzRlNDFkMmUwYWJhM2Q2NWI3YWU3ZmRlNTkxZDg3OWVkIn19fQ=="}]}}},Count:1b}],HandItems:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1},Count:1b},{}],Pose:{RightArm:[-25.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],Head:[0.0f,-35.5f,0.0f]},ShowArms:1b,Rotation:[80.0f,0.0f]}
execute at @e[type=minecraft:armor_stand,tag=tutorial_5_2] run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 0.15 1
execute at @e[type=minecraft:armor_stand,tag=tutorial_5_2] run particle minecraft:witch ~ ~ ~ 0.05 0.05 0.05 0.25 15

scoreboard players set @e[tag=tutorial_5_2] tutorial 0
return 1