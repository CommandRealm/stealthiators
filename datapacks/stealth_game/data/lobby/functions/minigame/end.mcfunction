tellraw @a[x=57,y=73,z=7,distance=..17,gamemode=adventure,scores={time_near_target=1..},tag=!playing] [{"text":"[","color":"dark_gray","bold":true},{"text":"☠","color":"dark_red","bold":false},{"text":"]","color":"dark_gray","bold":true},{"text":" Game over.","color":"red","bold":false}]
tellraw @a[x=57,y=73,z=7,distance=..17,gamemode=adventure,scores={time_near_target=1..},tag=!playing] [{"text":"Your final score was: ","color":"gold"},{"score":{"objective":"lobby_minigame","name":"$score"},"color":"yellow","bold":true}]
execute if score $score lobby_minigame matches 100.. as @a[x=57,y=73,z=7,distance=..17,gamemode=adventure,scores={time_near_target=1..,lobby_trident=1..},tag=!playing] run advancement grant @s only minecraft:custom/hundred_points
execute as @a[x=57,y=73,z=7,distance=..17,gamemode=adventure,scores={time_near_target=1..,lobby_trident=1..},tag=!playing] at @s run function lobby:minigame/check_highscore
tag @e[tag=highscore_holder,type=area_effect_cloud] add old_highscore
function lobby:minigame/start
##scoreboard players set $time lobby_minigame 30
playsound minecraft:entity.wither.shoot record @a 57 73 7 1 0.75
playsound minecraft:entity.wither.shoot record @a 57 73 7 1 0.5
playsound minecraft:entity.wither.shoot record @a 57 73 7 1 0.85
playsound minecraft:entity.wither.shoot record @a 57 73 7 1 0.8