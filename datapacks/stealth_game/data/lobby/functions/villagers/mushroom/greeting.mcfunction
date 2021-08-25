execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Mushroom Shopkeeper>","color":"#c22128"},{"text":" I got red mushrooms, portobello mushrooms, brown mushrooms, poisionous mushrooms, even button mushrooms!","color":"gray"}]
playsound minecraft:mushroom.greeting voice @a ~ ~ ~ 1 1
tag @s add said_greeting
scoreboard players set @s speech_timer 250