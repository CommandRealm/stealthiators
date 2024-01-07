# called when the specter uses their ability


effect give @s minecraft:invisibility 4 255 false
scoreboard players set @s specter_cooldown 600

particle minecraft:witch ~ ~1 ~ 0.25 0.75 0.25 0.3 50 force
playsound minecraft:entity.vex.death master @a ~ ~ ~ 1 0

clear @s minecraft:carrot_on_a_stick{CustomModelData:19}
item replace entity @s armor.head with minecraft:air

scoreboard players reset @s right_click
return 1