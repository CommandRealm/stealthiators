execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Livestock Shopkeeper>","color":"#a26f45"},{"text":" Hey, I even have straw!","color":"gray"}]
playsound minecraft:livestock.saying_2 voice @a ~ ~ ~ 0.5 1
tag @s add said_2
return 1