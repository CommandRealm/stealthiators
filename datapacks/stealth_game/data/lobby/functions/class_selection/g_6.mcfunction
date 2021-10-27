tellraw @s[scores={sel_g_class=6}] {"text":"You have already selected this class.","color":"red"}
execute unless entity @s[scores={sel_g_class=6}] run tellraw @s {"text":"Foreseer selected.","color":"#ba666a"}
scoreboard players set @s sel_g_class 6
