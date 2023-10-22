tellraw @s {"text":"\n"}
tellraw @s[scores={g_class=2}] {"text":"You have already selected this class.","color":"red"}
execute unless entity @s[scores={g_class=2}] run tellraw @s [{"text":"You are ","color":"#ba666a"},{"text":"LOCATOR","bold":true,"color":"red"}]
execute unless entity @s[scores={g_class=2}] run tellraw @s [{"text":"Info: ","color":"gold"},{"text":"The Locator gets a compass that points to the nearest runner at the time of use.","italic":true,"color":"#ba666a"}]
scoreboard players set @s sel_g_class 2
scoreboard players set @s g_class 2
item replace entity @s weapon.mainhand with air
clear @s carrot_on_a_stick{Enchantments:[{}]}
playsound minecraft:entity.cow.step master @s ~ ~ ~ 1000 2