tellraw @s[scores={sel_g_class=2}] {"text":"You have already selected this class.","color":"red"}
execute unless entity @s[scores={sel_g_class=2}] run tellraw @s {"text":"Locator selected.","color":"#ba666a"}
scoreboard players set @s sel_g_class 2

return 1