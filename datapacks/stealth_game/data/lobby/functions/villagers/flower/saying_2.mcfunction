execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"translate":"<Flower Shopkeeper>","color":"#6bfc6b"},{"translate":" Do you wanna buy flowers or not?","color":"gray"}]
playsound minecraft:flower.saying_2 voice @a ~ ~ ~ 1 1
tag @s add said_2
scoreboard players set @s speech_timer 350