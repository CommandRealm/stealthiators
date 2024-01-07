execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Nether Shopkeeper>","color":"#880006"},{"text":" I've been to the dangerous wastelands, come near and view my belongings!","color":"gray"}]
playsound minecraft:nether.greeting voice @a ~ ~ ~ 1 1
tag @s add said_greeting
return 1