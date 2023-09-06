tellraw @s {"translate":"\n"}
tellraw @s[scores={r_class=1}] {"translate":"You have already selected this class.","color":"dark_gray"}
execute unless entity @s[scores={r_class=1}] run tellraw @s [{"translate":"You are ","color":"gray"},{"translate":"BRAWLER","bold":true,"color":"dark_gray"}]
execute unless entity @s[scores={r_class=1}] run tellraw @s [{"translate":"Info: ","color":"gold"},{"translate":"The Brawler can stun gladiators by punching.","italic":true,"color":"gray"}]
scoreboard players set @s sel_r_class 1
scoreboard players set @s r_class 1
item replace entity @s weapon.mainhand with air
clear @s carrot_on_a_stick{Enchantments:[{id:"x",lvl:1}]}
playsound minecraft:entity.cow.step master @s ~ ~ ~ 1000 2