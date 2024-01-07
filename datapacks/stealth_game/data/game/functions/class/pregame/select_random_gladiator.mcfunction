tellraw @s {"text":"\n"}
tellraw @s[scores={g_class=7}] {"text":"You have already selected this class.","color":"red"}
execute unless entity @s[scores={g_class=7}] run tellraw @s [{"text":"You are ","color":"#ba666a"},{"text":"RANDOM","bold":true,"color":"red"}]
execute unless entity @s[scores={g_class=7}] run tellraw @s [{"text":"Info: ","color":"gold"},{"text":"You will be a random class every round.","italic":true,"color":"#ba666a"}]
scoreboard players set @s sel_g_class 7
scoreboard players set @s g_class 7
item replace entity @s weapon.mainhand with minecraft:air
clear @s minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:x",lvl:1s}]}
playsound minecraft:entity.cow.step master @s ~ ~ ~ 1000 2
return 1