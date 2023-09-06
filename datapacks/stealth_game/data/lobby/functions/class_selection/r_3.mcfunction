tellraw @s[scores={sel_r_class=3}] {"translate":"You have already selected this class.","color":"dark_gray"}
execute unless entity @s[scores={sel_r_class=3}] run tellraw @s {"translate":"Warper selected.","color":"gray"}
scoreboard players set @s sel_r_class 3
