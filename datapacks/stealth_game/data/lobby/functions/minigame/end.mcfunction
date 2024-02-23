tellraw @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={time_near_target=1..}] [{"text":"[","color":"dark_gray","bold":true},{"text":"☠","color":"dark_red","bold":false},{"text":"]","color":"dark_gray","bold":true},{"text":" Game over.","color":"red","bold":false}]
tellraw @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={time_near_target=1..}] [{"text":"Your final score was: ","color":"gold"},{"score":{"objective":"lobby_minigame","name":"$score"},"color":"yellow","bold":true}]
execute if score $score lobby_minigame matches 100.. as @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={time_near_target=1..,lobby_trident=1..}] run advancement grant @s only advancements:custom/hundred_points
execute as @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,tag=!playing,scores={time_near_target=1..,lobby_trident=1..}] at @s run function lobby:minigame/check_highscore
tag @e[type=minecraft:area_effect_cloud,tag=highscore_holder] add old_highscore
function lobby:minigame/start
##scoreboard players set $time lobby_minigame 30
playsound minecraft:entity.wither.shoot record @a 57 73 7 1 0.75
playsound minecraft:entity.wither.shoot record @a 57 73 7 1 0.5
playsound minecraft:entity.wither.shoot record @a 57 73 7 1 0.85
playsound minecraft:entity.wither.shoot record @a 57 73 7 1 0.8
return 1