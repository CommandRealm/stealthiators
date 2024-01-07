scoreboard players add $time game 1
execute if score $time game matches ..390 run function game:generation/main
execute if score $time game matches 400..700 run function game:animation/main
execute if score $time game matches 401 run function game:gameplay/start
execute if score $time game matches 605.. run function game:gameplay/main
execute as @a[team=spectator] at @s unless entity @s[scores={back_to_lobby=0}] run function lobby:midgame/back_to_lobby
return 1