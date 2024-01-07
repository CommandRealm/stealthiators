tag @s[tag=!said_greeting] add saying_greet
execute if entity @s[tag=said_greeting] run function lobby:villagers/melon/random_saying
execute if entity @s[tag=saying_greet] run function lobby:villagers/melon/greeting
tag @s remove saying_greet
scoreboard players set @s speech_timer 400
execute positioned ^ ^ ^3 run tag @a[distance=..3] add talked_to_9
return 1