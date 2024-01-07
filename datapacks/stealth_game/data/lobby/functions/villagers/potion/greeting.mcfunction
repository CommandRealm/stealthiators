execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Potion Shopkeeper>","color":"#7200ff"},{"text":" Hello adventurer! How about some potions?","color":"gray"}]
playsound minecraft:potion.greeting voice @a ~ ~ ~ 1 1
tag @s add said_greeting
return 1