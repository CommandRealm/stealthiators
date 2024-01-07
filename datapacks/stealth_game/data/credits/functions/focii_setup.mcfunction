scoreboard objectives add focii_leg dummy
scoreboard objectives add focii_direction dummy
scoreboard players set -1 focii_direction -1
kill @e[tag=focii]
summon minecraft:armor_stand 61 70 -23 {ArmorItems:[{},{},{},{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1205369544,1833322018,-1963922216,2116488071],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzg0M2I2Y2ZmYWM1YTMxMjAxNDE2OTBjNGIzMzYyZDJkMjQyMDI4M2UyNWI3M2UzOWRjMzFmNGQ3NjBhOTkzZiJ9fX0="}]}}},Count:1b}],ShowArms:1b,NoBasePlate:1b,Rotation:[77.5f,0.0f],Tags:["focii","show_details"],Invulnerable:1b,Marker:1b,NoGravity:1b,Pose:{RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f]}}
scoreboard players set @e[type=minecraft:armor_stand,tag=focii] focii_direction 0
item replace entity @e[tag=focii] armor.feet with minecraft:iron_boots
item replace entity @e[tag=focii] armor.chest with minecraft:leather_chestplate{display:{color:16748436}}
item replace entity @e[tag=focii] armor.legs with minecraft:leather_leggings{display:{color:7037282}}
return 1