tellraw @s[scores={sel_g_class=3}] {"translate":"You have already selected this class.","color":"red"}
execute unless entity @s[scores={sel_g_class=3}] run tellraw @s {"translate":"Trapper selected.","color":"#ba666a"}
scoreboard players set @s sel_g_class 3
