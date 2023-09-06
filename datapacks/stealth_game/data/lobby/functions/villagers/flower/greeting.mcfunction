execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"translate":"<Flower Shopkeeper>","color":"#6bfc6b"},{"translate":" What do you want?","color":"gray"}]
playsound minecraft:flower.greeting voice @a ~ ~ ~ 1 1
tag @s add said_greeting