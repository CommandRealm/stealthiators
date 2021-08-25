tellraw @s {"text":"\n"}
tellraw @s[scores={g_class=4}] {"text":"You have already selected this class.","color":"red"}
execute unless entity @s[scores={g_class=4}] run tellraw @s [{"text":"You are ","color":"#ba666a"},{"text":"ARBALIST","bold":true,"color":"red"}]
execute unless entity @s[scores={g_class=4}] run tellraw @s [{"text":"Info: ","color":"gold"},{"text":"The Arbalist starts with a preloaded crossbow that can be shot up to five times.","italic":true,"color":"#ba666a"}]
scoreboard players set @s sel_g_class 4
scoreboard players set @s g_class 4
replaceitem entity @s weapon.mainhand air
clear @s carrot_on_a_stick{Enchantments:[{id:"x",lvl:1}]}
playsound minecraft:entity.cow.step master @s ~ ~ ~ 1000 2