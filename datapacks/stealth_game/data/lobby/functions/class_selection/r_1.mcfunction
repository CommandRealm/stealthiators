tellraw @s[scores={sel_r_class=1}] {"translate":"You have already selected this class.","color":"dark_gray"}
execute unless entity @s[scores={sel_r_class=1}] run tellraw @s {"translate":"Brawler selected.","color":"gray"}
scoreboard players set @s sel_r_class 1
