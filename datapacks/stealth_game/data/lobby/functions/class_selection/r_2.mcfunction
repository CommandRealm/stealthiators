tellraw @s[scores={sel_r_class=2}] {"text":"You have already selected this class.","color":"dark_gray"}
execute unless entity @s[scores={sel_r_class=2}] run tellraw @s {"text":"Alchemist selected.","color":"gray"}
scoreboard players set @s sel_r_class 2
