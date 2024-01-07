execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Blacksmith Shopkeeper>","color":"#77787d"},{"text":" Want a shield? Protect yourself with this fine piece.","color":"gray"}]
playsound minecraft:blacksmith.saying_3 voice @a ~ ~ ~ 1 1
tag @s add said_3
return 1