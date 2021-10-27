execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Mining Shopkeeper>","color":"dark_gray"},{"text":" I've explored the deep dark! Come here to view my wondrous findings!","color":"gray"}]
playsound minecraft:mining.greeting voice @a ~ ~ ~ 1 1
tag @s add said_greeting