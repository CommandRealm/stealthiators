tellraw @s {"text":"\n"}
tellraw @s[scores={g_class=1}] {"text":"You have already selected this class.","color":"red"}
execute unless entity @s[scores={g_class=1}] run tellraw @s [{"text":"You are ","color":"#ba666a"},{"text":"ATHLETE","bold":true,"color":"red"}]
execute unless entity @s[scores={g_class=1}] run tellraw @s [{"text":"Info: ","color":"gold"},{"text":"The Athlete has a shorter dash cooldown.","italic":true,"color":"#ba666a"}]
scoreboard players set @s sel_g_class 1
scoreboard players set @s g_class 1
item replace entity @s weapon.mainhand with air
clear @s carrot_on_a_stick{Enchantments:[{id:"x",lvl:1}]}
playsound minecraft:entity.cow.step master @s ~ ~ ~ 1000 2