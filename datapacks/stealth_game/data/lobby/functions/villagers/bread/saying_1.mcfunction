execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Bread Shopkeeper>","color":"#a67330"},{"text":" My wonderful bread only costs 50 coins!","color":"gray"}]
playsound minecraft:bread.saying_1 voice @a ~ ~ ~ 1 1
tag @s add said_1
return 1