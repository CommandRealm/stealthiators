execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Blacksmith Shopkeeper>","color":"#77787d"},{"text":" I'm here 12 hours a day, making sure you get nothing but the finest tools and weapons.","color":"gray"}]
playsound minecraft:blacksmith.saying_2 voice @a ~ ~ ~ 1 1
tag @s add said_2
scoreboard players set @s speech_timer 350