execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Bread Shopkeeper>","color":"#a67330"},{"text":" No . . . It's not gluten-free.","color":"gray"}]
playsound minecraft:bread.saying_3 voice @a ~ ~ ~ 1 1
tag @s add said_3
return 1