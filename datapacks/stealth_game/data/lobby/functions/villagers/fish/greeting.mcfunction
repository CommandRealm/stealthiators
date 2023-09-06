execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"translate":"<Fish Shopkeeper>","color":"#78bcc6"},{"translate":" I have everything you'll ever need for fishing, come here!","color":"gray"}]
playsound minecraft:fish.greeting voice @a ~ ~ ~ 1 1
tag @s add said_greeting