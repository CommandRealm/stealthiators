tellraw @s {"text":"\n"}
tellraw @s[scores={g_class=3}] {"text":"You have already selected this class.","color":"red"}
execute unless entity @s[scores={g_class=3}] run tellraw @s [{"text":"You are ","color":"#ba666a"},{"text":"TRAPPER","bold":true,"color":"red"}]
execute unless entity @s[scores={g_class=3}] run tellraw @s [{"text":"Info: ","color":"gold"},{"text":"The Trapper starts with two runner traps. Trapper will receive an additional one for each band that is stepped on, up to two traps in total. The runners will receive slowness and glowing when activating a trap. The Trapper class can warp to triggered traps.","italic":true,"color":"#ba666a"}]
scoreboard players set @s sel_g_class 3
scoreboard players set @s g_class 3
replaceitem entity @s weapon.mainhand air
clear @s carrot_on_a_stick{Enchantments:[{id:"x",lvl:1}]}
playsound minecraft:entity.cow.step master @s ~ ~ ~ 1000 2