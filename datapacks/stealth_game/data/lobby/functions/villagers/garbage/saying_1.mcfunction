execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Garbage Shopkeeper>","color":"#578043"},{"text":" As you can see, we have nothing but the most exquisite commodities.","color":"gray"}]
playsound minecraft:garbage.saying_1 voice @a ~ ~ ~ 0.75 1
tag @s add said_1
return 1