execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Potion Shopkeeper>","color":"#7200ff"},{"text":" We haven't had any visitors in quite some time.","color":"gray"}]
playsound minecraft:potion.saying_3 voice @a ~ ~ ~ 1 1
tag @s add said_3
return 1