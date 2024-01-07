scoreboard players reset @s right_click
scoreboard players add @s ready 1
scoreboard players set @s[scores={ready=2..}] ready 0
clear @s minecraft:carrot_on_a_stick{CustomModelData:2}
playsound minecraft:item.lodestone_compass.lock master @s ~ ~ ~ 100 0
return 1