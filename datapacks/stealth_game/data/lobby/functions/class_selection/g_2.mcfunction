tellraw @s[scores={sel_g_class=2}] {"translate":"You have already selected this class.","color":"red"}
execute unless entity @s[scores={sel_g_class=2}] run tellraw @s {"translate":"Locator selected.","color":"#ba666a"}
scoreboard players set @s sel_g_class 2
