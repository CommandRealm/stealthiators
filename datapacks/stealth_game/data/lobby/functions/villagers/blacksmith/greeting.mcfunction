execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Blacksmith Shopkeeper>","color":"#77787d"},{"text":" Come closer challenger, acquire your metal workings here!","color":"gray"}]
playsound minecraft:blacksmith.greeting voice @a ~ ~ ~ 1 1
tag @s add said_greeting
return 1