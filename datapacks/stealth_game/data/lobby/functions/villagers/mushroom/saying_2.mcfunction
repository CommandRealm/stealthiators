execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Mushroom Shopkeeper>","color":"#c22128"},{"text":" I've been to mushroom worlds all over the universe.","color":"gray"}]
playsound minecraft:mushroom.saying_2 voice @a ~ ~ ~ 0.5 1
tag @s add said_2
return 1