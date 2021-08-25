tellraw @s[scores={sel_r_class=1}] {"text":"You have already selected this class.","color":"dark_gray"}
execute unless entity @s[scores={sel_r_class=1}] run tellraw @s {"text":"Brawler selected.","color":"gray"}
scoreboard players set @s sel_r_class 1
