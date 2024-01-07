execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Bread Shopkeeper>","color":"#a67330"},{"text":" Approach and receive freshly-baked bread!","color":"gray"}]
playsound minecraft:bread.greeting voice @a ~ ~ ~ 1 1
tag @s add said_greeting
return 1