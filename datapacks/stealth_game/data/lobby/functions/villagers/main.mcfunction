scoreboard players reset @e[tag=market_villager,scores={speech_timer=500..}] speech_timer
execute as @e[tag=market_villager] at @s unless entity @a[distance=..10] run function lobby:villagers/reset
execute as @e[tag=market_villager] at @s positioned ^ ^ ^2 if entity @r[distance=..3] run scoreboard players add @s speech_timer 1
execute as @e[tag=market_villager,scores={speech_timer=20}] at @s run function lobby:villagers/speak
return 1