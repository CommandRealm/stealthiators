tellraw @s[scores={sel_g_class=5}] {"text":"You have already selected this class.","color":"red"}
execute unless entity @s[scores={sel_g_class=5}] run tellraw @s {"text":"Specter selected.","color":"#ba666a"}
scoreboard players set @s sel_g_class 5

return 1