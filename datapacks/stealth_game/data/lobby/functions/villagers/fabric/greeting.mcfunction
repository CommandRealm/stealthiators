execute positioned ^ ^ ^3 run tellraw @a[distance=..3] [{"text":"<Fabric Shopkeeper>","color":"#9744c7"},{"text":" Draw near and see my many fabrics!","color":"gray"}]
playsound minecraft:fabric.greeting voice @a ~ ~ ~ 1 1
tag @s add said_greeting
return 1