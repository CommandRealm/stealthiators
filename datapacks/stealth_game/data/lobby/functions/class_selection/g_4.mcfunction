tellraw @s[scores={sel_g_class=4}] {"text":"You have already selected this class.","color":"red"}
execute unless entity @s[scores={sel_g_class=4}] run tellraw @s {"text":"Arbalist selected.","color":"#ba666a"}
scoreboard players set @s sel_g_class 4
