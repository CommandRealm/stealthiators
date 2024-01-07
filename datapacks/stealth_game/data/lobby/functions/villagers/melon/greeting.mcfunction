execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Melon Shopkeeper>","color":"green"},{"text":" You, over there, come. I'm the melon man!","color":"gray"}]
playsound minecraft:melon.greeting voice @a ~ ~ ~ 1 1
tag @s add said_greeting
return 1