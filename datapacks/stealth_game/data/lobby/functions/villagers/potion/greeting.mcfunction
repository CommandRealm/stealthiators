execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"translate":"<Potion Shopkeeper>","color":"#7200ff"},{"translate":" Hello adventurer! How about some potions?","color":"gray"}]
playsound minecraft:potion.greeting voice @a ~ ~ ~ 1 1
tag @s add said_greeting