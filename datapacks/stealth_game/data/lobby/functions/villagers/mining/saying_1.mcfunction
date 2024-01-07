execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Mining Shopkeeper>","color":"dark_gray"},{"text":" Look at the beautiful amethyst. Mesmerizing, isn't it?","color":"gray"}]
playsound minecraft:mining.saying_1 voice @a ~ ~ ~ 1 1
tag @s add said_1
return 1