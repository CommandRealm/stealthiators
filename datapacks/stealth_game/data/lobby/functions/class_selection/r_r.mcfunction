tellraw @s[scores={sel_r_class=5}] {"text":"Random is already selected.","color":"dark_gray"}
execute unless entity @s[scores={sel_r_class=5}] run tellraw @s {"text":"Random selected.","color":"gray"}
scoreboard players set @s sel_r_class 7
