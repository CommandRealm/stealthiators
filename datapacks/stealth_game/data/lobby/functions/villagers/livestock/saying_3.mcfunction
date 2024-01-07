execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Livestock Shopkeeper>","color":"#a26f45"},{"text":" So, come and get your livestock.","color":"gray"}]
playsound minecraft:livestock.saying_3 voice @a ~ ~ ~ 1 1
tag @s add said_3
return 1