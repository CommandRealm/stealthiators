tag @e[type=minecraft:trident,distance=..2,nbt={inBlockState:{Name:"minecraft:target"}}] add in_block
scoreboard players set $target_power lobby_minigame 0
execute at @e[type=minecraft:area_effect_cloud,tag=minigame_target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:target[power=1] run scoreboard players set $target_power lobby_minigame 1
execute at @e[type=minecraft:area_effect_cloud,tag=minigame_target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:target[power=2] run scoreboard players set $target_power lobby_minigame 2
execute at @e[type=minecraft:area_effect_cloud,tag=minigame_target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:target[power=3] run scoreboard players set $target_power lobby_minigame 3
execute at @e[type=minecraft:area_effect_cloud,tag=minigame_target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:target[power=4] run scoreboard players set $target_power lobby_minigame 4
execute at @e[type=minecraft:area_effect_cloud,tag=minigame_target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:target[power=5] run scoreboard players set $target_power lobby_minigame 5
execute at @e[type=minecraft:area_effect_cloud,tag=minigame_target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:target[power=6] run scoreboard players set $target_power lobby_minigame 6
execute at @e[type=minecraft:area_effect_cloud,tag=minigame_target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:target[power=7] run scoreboard players set $target_power lobby_minigame 7
execute at @e[type=minecraft:area_effect_cloud,tag=minigame_target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:target[power=8] run scoreboard players set $target_power lobby_minigame 8
execute at @e[type=minecraft:area_effect_cloud,tag=minigame_target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:target[power=9] run scoreboard players set $target_power lobby_minigame 9
execute at @e[type=minecraft:area_effect_cloud,tag=minigame_target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:target[power=10] run scoreboard players set $target_power lobby_minigame 10
execute at @e[type=minecraft:area_effect_cloud,tag=minigame_target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:target[power=11] run scoreboard players set $target_power lobby_minigame 11
execute at @e[type=minecraft:area_effect_cloud,tag=minigame_target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:target[power=12] run scoreboard players set $target_power lobby_minigame 12
execute at @e[type=minecraft:area_effect_cloud,tag=minigame_target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:target[power=13] run scoreboard players set $target_power lobby_minigame 13
execute at @e[type=minecraft:area_effect_cloud,tag=minigame_target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:target[power=14] run scoreboard players set $target_power lobby_minigame 14
execute at @e[type=minecraft:area_effect_cloud,tag=minigame_target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:target[power=15] run scoreboard players set $target_power lobby_minigame 15
scoreboard players set $hit lobby_minigame 1
scoreboard players operation $score lobby_minigame += $target_power lobby_minigame
execute if score $streak lobby_minigame matches 5.. run scoreboard players add $score lobby_minigame 1
execute if score $streak lobby_minigame matches 10.. run scoreboard players add $score lobby_minigame 1
execute if score $streak lobby_minigame matches 15.. run scoreboard players add $score lobby_minigame 1
execute if score $streak lobby_minigame matches 20.. run scoreboard players add $score lobby_minigame 1
execute if score $streak lobby_minigame matches 25.. run scoreboard players add $score lobby_minigame 1
scoreboard players add $streak lobby_minigame 1

execute if score $streak lobby_minigame matches 5 run title @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={ready=0}] title {"text":" "}
execute if score $streak lobby_minigame matches 10 run title @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={ready=0}] title {"text":" "}
execute if score $streak lobby_minigame matches 15 run title @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={ready=0}] title {"text":" "}
execute if score $streak lobby_minigame matches 20 run title @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={ready=0}] title {"text":" "}
execute if score $streak lobby_minigame matches 25 run title @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={ready=0}] title {"text":" "}

execute if score $streak lobby_minigame matches 5 run title @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={ready=0}] subtitle [{"text":"+5 streak","color":"gold"}]
execute if score $streak lobby_minigame matches 10 run title @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={ready=0}] subtitle [{"text":"+10 streak","color":"gold"}]
execute if score $streak lobby_minigame matches 15 run title @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={ready=0}] subtitle [{"text":"+15 streak","color":"gold"}]
execute if score $streak lobby_minigame matches 20 run title @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={ready=0}] subtitle [{"text":"+20 streak","color":"gold"}]
execute if score $streak lobby_minigame matches 25 run title @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={ready=0}] subtitle [{"text":"+25 streak","color":"gold"}]



scoreboard players set $circle_time lobby_minigame 1

execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 200 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.041
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 193 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.082
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 186 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.123
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 179 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.164
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 172 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.205
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 165 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.246
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 158 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.287
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 151 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.328
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 144 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.369
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 137 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.41
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 130 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.451
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 123 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.492
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 116 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.533
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 109 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.574
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 102 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.615
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 95 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.656
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 88 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.697
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 81 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.738
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 74 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.779
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 67 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.82
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 60 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.861
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 53 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.902
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 46 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.943
execute unless score $target_power lobby_minigame matches 15 if score $set_circle_time lobby_minigame matches 39 run playsound minecraft:block.note_block.bit record @a 57 73 7 1 1.984

execute if score $target_power lobby_minigame matches 15 run title @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={ready=0}] title {"text":" "}
execute if score $target_power lobby_minigame matches 15 run title @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={ready=0}] subtitle {"text":"↔ BULLSEYE ↔","color":"red"}
execute if score $target_power lobby_minigame matches 15 run advancement grant @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={time_near_target=1..,lobby_trident=1..}] only minecraft:custom/hit_bullseye
execute if score $target_power lobby_minigame matches 15 run scoreboard players set $bullseye lobby_minigame 1
execute if score $target_power lobby_minigame matches 15 run scoreboard players add $score lobby_minigame 10
return 1