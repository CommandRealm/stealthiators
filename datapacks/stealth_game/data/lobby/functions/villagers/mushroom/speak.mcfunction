scoreboard players set @s speech_timer 400
tag @s[tag=!said_greeting] add saying_greet
stopsound @a voice minecraft:mushroom.greeting
execute if entity @s[tag=said_greeting] run function lobby:villagers/mushroom/random_saying
execute if entity @s[tag=saying_greet] run function lobby:villagers/mushroom/greeting
tag @s remove saying_greet
execute positioned ^ ^ ^3 run tag @a[distance=..3] add talked_to_10
return 1