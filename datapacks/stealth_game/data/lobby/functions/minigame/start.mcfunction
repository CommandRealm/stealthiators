tag @e[type=minecraft:area_effect_cloud,tag=minigame_target] remove active_target
scoreboard players set $time lobby_minigame 1
scoreboard players set $circle_time lobby_minigame 0
scoreboard players set $set_circle_time lobby_minigame 200
scoreboard players set $wait_time lobby_minigame 40
scoreboard players set $streak lobby_minigame 0
scoreboard players set $miss lobby_minigame 0
scoreboard players set $score lobby_minigame 0
scoreboard players set $hit lobby_minigame 0
tag @e[type=minecraft:area_effect_cloud,tag=minigame_target,tag=already_selected] remove already_selected
tellraw @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={time_near_target=1..}] [{"text":"[","color":"dark_gray","bold":true},{"text":"⭐","color":"dark_green","bold":false},{"text":"]","color":"dark_gray","bold":true},{"text":" Starting the gladiator training-course.","color":"green","bold":false}]
scoreboard objectives remove lobby_trident
scoreboard objectives add lobby_trident minecraft.used:minecraft.trident
return 1