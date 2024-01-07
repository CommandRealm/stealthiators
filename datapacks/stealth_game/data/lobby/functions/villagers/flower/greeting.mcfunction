execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Flower Shopkeeper>","color":"#6bfc6b"},{"text":" What do you want?","color":"gray"}]
playsound minecraft:flower.greeting voice @a ~ ~ ~ 1 1
tag @s add said_greeting
return 1