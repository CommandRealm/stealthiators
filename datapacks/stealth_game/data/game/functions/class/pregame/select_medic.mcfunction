tellraw @s {"text":"\n"}
tellraw @s[scores={r_class=4}] {"text":"You have already selected this class.","color":"dark_gray"}
execute unless entity @s[scores={r_class=4}] run tellraw @s [{"text":"You are ","color":"gray"},{"text":"Medic","bold":true,"color":"dark_gray"}]
execute unless entity @s[scores={r_class=4}] run tellraw @s [{"text":"Info: ","color":"gold"},{"text":"The Medic can revive up to two caught runners by crouching where they died.","italic":true,"color":"gray"}]
scoreboard players set @s sel_r_class 4
scoreboard players set @s r_class 4
item replace entity @s weapon.mainhand with minecraft:air
clear @s minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:x",lvl:1s}]}
playsound minecraft:entity.cow.step master @s ~ ~ ~ 1000 2
return 1