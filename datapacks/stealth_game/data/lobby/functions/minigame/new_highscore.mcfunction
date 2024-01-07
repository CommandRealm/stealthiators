playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0
scoreboard players operation @s highscore = $score lobby_minigame
tellraw @s {"text":"You have a new highscore!","color":"blue"}
scoreboard players add $highscore lobby_minigame 0
scoreboard players operation $check highscore = $score lobby_minigame
scoreboard players operation $score highscore = $score lobby_minigame
scoreboard players operation $check highscore < $highscore lobby_minigame
scoreboard players operation $check highscore -= $score highscore
execute unless score $check highscore matches 0 run function lobby:minigame/new_global_highscore

return 1