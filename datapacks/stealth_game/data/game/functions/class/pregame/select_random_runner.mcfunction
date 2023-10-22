tellraw @s {"text":"\n"}
tellraw @s[scores={r_class=7}] {"text":"You have already selected this class.","color":"dark_gray"}
execute unless entity @s[scores={r_class=7}] run tellraw @s [{"text":"You are ","color":"gray"},{"text":"RANDOM","bold":true,"color":"dark_gray"}]
execute unless entity @s[scores={r_class=7}] run tellraw @s [{"text":"Info: ","color":"gold"},{"text":"You will be a random class every round.","italic":true,"color":"gray"}]
scoreboard players set @s sel_r_class 7
scoreboard players set @s r_class 7
item replace entity @s weapon.mainhand with air
clear @s carrot_on_a_stick{Enchantments:[{}]}
playsound minecraft:entity.cow.step master @s ~ ~ ~ 1000 2