tellraw @s[scores={sel_r_class=3}] {"text":"You have already selected this class.","color":"dark_gray"}
execute unless entity @s[scores={sel_r_class=3}] run tellraw @s {"text":"Warper selected.","color":"gray"}
scoreboard players set @s sel_r_class 3

return 1