execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Livestock Shopkeeper>","color":"#a26f45"},{"text":" Come get your cows, chickens, horses, heck! I even got llamas!","color":"gray"}]
playsound minecraft:livestock.greeting voice @a ~ ~ ~ 1 1
tag @s add said_greeting
return 1