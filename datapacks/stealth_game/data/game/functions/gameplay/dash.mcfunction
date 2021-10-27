effect give @s speed 2 8
scoreboard players set @s dash_cooldown 300
scoreboard players set @s[scores={g_class=1},tag=playing] dash_cooldown 160
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 1
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 0.5
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 1
scoreboard players reset @s right_click
clear @s carrot_on_a_stick{CustomModelData:1} 