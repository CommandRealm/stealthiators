tellraw @s {"translate":"\n"}
tellraw @s[scores={r_class=2}] {"translate":"You have already selected this class.","color":"dark_gray"}
execute unless entity @s[scores={r_class=2}] run tellraw @s [{"translate":"You are ","color":"gray"},{"translate":"ALCHEMIST","bold":true,"color":"dark_gray"}]
execute unless entity @s[scores={r_class=2}] run tellraw @s [{"translate":"Info: ","color":"gold"},{"translate":"The Alchemist can throw smoke bombs to blind gladiators. You are limited to two smoke bombs.","italic":true,"color":"gray"}]
scoreboard players set @s sel_r_class 2
scoreboard players set @s r_class 2
item replace entity @s weapon.mainhand with air
clear @s carrot_on_a_stick{Enchantments:[{id:"x",lvl:1}]}
playsound minecraft:entity.cow.step master @s ~ ~ ~ 1000 2