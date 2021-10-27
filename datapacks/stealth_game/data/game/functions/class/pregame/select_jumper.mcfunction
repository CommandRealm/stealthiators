tellraw @s {"text":"\n"}
tellraw @s[scores={r_class=6}] {"text":"You have already selected this class.","color":"dark_gray"}
execute unless entity @s[scores={r_class=6}] run tellraw @s [{"text":"You are ","color":"gray"},{"text":"Jumper","bold":true,"color":"dark_gray"}]
execute unless entity @s[scores={r_class=6}] run tellraw @s [{"text":"Info: ","color":"gold"},{"text":"The Jumper can charge up their next jump by crouching.","italic":true,"color":"gray"}]
scoreboard players set @s sel_r_class 6
scoreboard players set @s r_class 6
item replace entity @s weapon.mainhand with air
clear @s carrot_on_a_stick{Enchantments:[{id:"x",lvl:1}]}
playsound minecraft:entity.cow.step master @s ~ ~ ~ 1000 2