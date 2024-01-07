tellraw @s[scores={sel_g_class=5}] {"text":"Random is already selected.","color":"red"}
execute unless entity @s[scores={sel_g_class=5}] run tellraw @s {"text":"Random selected.","color":"#ba666a"}
scoreboard players set @s sel_g_class 7

return 1