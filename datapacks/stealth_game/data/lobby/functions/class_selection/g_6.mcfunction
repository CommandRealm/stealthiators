tellraw @s[scores={sel_g_class=6}] {"translate":"You have already selected this class.","color":"red"}
execute unless entity @s[scores={sel_g_class=6}] run tellraw @s {"translate":"Foreseer selected.","color":"#ba666a"}
scoreboard players set @s sel_g_class 6
