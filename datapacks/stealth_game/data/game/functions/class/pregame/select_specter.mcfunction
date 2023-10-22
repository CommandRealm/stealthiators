tellraw @s {"text":"\n"}
tellraw @s[scores={g_class=5}] {"text":"You have already selected this class.","color":"red"}
execute unless entity @s[scores={g_class=5}] run tellraw @s [{"text":"You are ","color":"#ba666a"},{"text":"SPECTER","bold":true,"color":"red"}]
execute unless entity @s[scores={g_class=5}] run tellraw @s [{"text":"Info: ","color":"gold"},{"text":"The Specter can go invisible periodically.","italic":true,"color":"#ba666a"}]
scoreboard players set @s sel_g_class 5
scoreboard players set @s g_class 5
item replace entity @s weapon.mainhand with air
clear @s carrot_on_a_stick{Enchantments:[{}]}
playsound minecraft:entity.cow.step master @s ~ ~ ~ 1000 2