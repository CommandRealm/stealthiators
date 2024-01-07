scoreboard players set @s speech_timer 400
tag @s[tag=!said_greeting] add saying_greet
execute if entity @s[tag=said_greeting] run function lobby:villagers/flower/random_saying
execute if entity @s[tag=saying_greet] run function lobby:villagers/flower/greeting
tag @s remove saying_greet
execute positioned ^ ^ ^3 run tag @a[distance=..3] add talked_to_6
return 1