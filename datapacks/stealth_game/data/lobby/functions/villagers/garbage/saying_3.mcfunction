execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Garbage Shopkeeper>","color":"#578043"},{"text":" You'll be glad to know that there is no skeleton behind me.","color":"gray"}]
playsound minecraft:garbage.saying_3 voice @a ~ ~ ~ 1 1
tag @s add said_3
return 1