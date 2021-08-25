execute if score $hit lobby_minigame matches 0 run playsound minecraft:block.note_block.didgeridoo record @a 57 73 7 1 0.6
execute if score $hit lobby_minigame matches 0 unless score $score lobby_minigame matches 0 run scoreboard players add $miss lobby_minigame 1
execute if score $miss lobby_minigame matches 3.. run function lobby:minigame/end
scoreboard players set $wait_time lobby_minigame 40
tag @e[tag=minigame_target,type=area_effect_cloud] remove active_target