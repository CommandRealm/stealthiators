tellraw @s[scores={sel_g_class=1}] {"translate":"You have already selected this class.","color":"red"}
execute unless entity @s[scores={sel_g_class=1}] run tellraw @s {"translate":"Athlete selected.","color":"#ba666a"}
scoreboard players set @s sel_g_class 1
