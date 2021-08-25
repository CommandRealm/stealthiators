scoreboard players set $streak lobby_minigame 0
scoreboard players add $miss lobby_minigame 1
execute if score $circle_time lobby_minigame matches 1.. run scoreboard players operation $circle_time lobby_minigame = $set_circle_time lobby_minigame
execute if score $circle_time lobby_minigame matches ..60 run scoreboard players set $circle_time lobby_minigame 80
execute if score $miss lobby_minigame matches 3.. run function lobby:minigame/end
tag @s add in_block
playsound minecraft:block.note_block.didgeridoo record @a 57 73 7 1 0.65