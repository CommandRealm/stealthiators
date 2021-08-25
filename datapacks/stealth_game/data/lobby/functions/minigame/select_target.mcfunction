tag @e[type=trident] add prethrown_trident
tag @e[tag=minigame_target,type=area_effect_cloud] remove active_target
tag @e[tag=minigame_target,sort=random,limit=1,type=area_effect_cloud,tag=!already_selected] add active_target
tag @e[tag=minigame_target,type=area_effect_cloud,tag=already_selected] remove already_selected
tag @e[tag=minigame_target,type=area_effect_cloud,tag=active_target] add already_selected
scoreboard players operation $circle_time lobby_minigame = $set_circle_time lobby_minigame
execute if score $set_circle_time lobby_minigame matches 50.. run scoreboard players remove $set_circle_time lobby_minigame 7
execute if score $score lobby_minigame matches 0 run scoreboard players set $set_circle_time lobby_minigame 200
execute if score $score lobby_minigame matches 0 run scoreboard players set $circle_time lobby_minigame 200
scoreboard players set $hit lobby_minigame 0
scoreboard players set $wait_time lobby_minigame -1
scoreboard players set $target_power lobby_minigame 0