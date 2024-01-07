execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Mining Shopkeeper>","color":"dark_gray"},{"text":" I got diorite, I got andesite, I got tuff, calcite, deepslate, and even basalt!","color":"gray"}]
playsound minecraft:mining.saying_3 voice @a ~ ~ ~ 1 1
tag @s add said_3
scoreboard players set @s speech_timer 250
return 1