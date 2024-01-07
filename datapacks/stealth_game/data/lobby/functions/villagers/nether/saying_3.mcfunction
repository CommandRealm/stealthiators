execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Nether Shopkeeper>","color":"#880006"},{"text":" Weeping vines and crying obsidian are half-off!","color":"gray"}]
playsound minecraft:nether.saying_3 voice @a ~ ~ ~ 1 1
tag @s add said_3
return 1