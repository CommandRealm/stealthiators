tellraw @s[scores={sel_g_class=5}] {"translate":"Random is already selected.","color":"red"}
execute unless entity @s[scores={sel_g_class=5}] run tellraw @s {"translate":"Random selected.","color":"#ba666a"}
scoreboard players set @s sel_g_class 7
