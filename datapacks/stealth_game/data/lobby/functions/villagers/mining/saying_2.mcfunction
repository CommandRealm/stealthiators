execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Mining Shopkeeper>","color":"dark_gray"},{"text":" I once found a vein of twenty diamond ore!","color":"gray"}]
playsound minecraft:mining.saying_2 voice @a ~ ~ ~ 1 1
tag @s add said_2
return 1