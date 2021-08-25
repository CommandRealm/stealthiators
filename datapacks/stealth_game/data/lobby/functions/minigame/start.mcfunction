tag @e[tag=minigame_target,type=area_effect_cloud] remove active_target
scoreboard players set $time lobby_minigame 1
scoreboard players set $circle_time lobby_minigame 0
scoreboard players set $set_circle_time lobby_minigame 200
scoreboard players set $wait_time lobby_minigame 40
scoreboard players set $streak lobby_minigame 0
scoreboard players set $miss lobby_minigame 0
scoreboard players set $score lobby_minigame 0
scoreboard players set $hit lobby_minigame 0
tag @e[tag=minigame_target,type=area_effect_cloud,tag=already_selected] remove already_selected
tellraw @a[x=57,y=73,z=7,distance=..17,gamemode=adventure,scores={time_near_target=1..},tag=!playing] [{"text":"[","color":"dark_gray","bold":true},{"text":"⭐","color":"dark_green","bold":false},{"text":"]","color":"dark_gray","bold":true},{"text":" Starting the gladiator training-course.","color":"green","bold":false}]
scoreboard objectives remove lobby_trident
scoreboard objectives add lobby_trident minecraft.used:minecraft.trident