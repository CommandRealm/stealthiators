scoreboard players operation $check highscore = $score lobby_minigame
scoreboard players operation $score highscore = $score lobby_minigame
scoreboard players operation $check highscore < @s highscore
scoreboard players operation $check highscore -= $score highscore
execute unless score $check highscore matches 0 run function lobby:minigame/new_highscore

return 1