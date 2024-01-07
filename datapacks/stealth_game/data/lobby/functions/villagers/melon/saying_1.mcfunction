execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Melon Shopkeeper>","color":"green"},{"text":" I have the finest melons from all over the globe!","color":"gray"}]
playsound minecraft:melon.saying_1 voice @a ~ ~ ~ 0.75 1
tag @s add said_1
return 1