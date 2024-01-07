tellraw @s[scores={sel_r_class=5}] {"text":"You have already selected this class.","color":"dark_gray"}
execute unless entity @s[scores={sel_r_class=5}] run tellraw @s {"text":"Puppeteer selected.","color":"gray"}
scoreboard players set @s sel_r_class 5

return 1