tellraw @s {"text":"\n"}
tellraw @s[scores={r_class=5}] {"text":"You have already selected this class.","color":"dark_gray"}
execute unless entity @s[scores={r_class=5}] run tellraw @s [{"text":"You are ","color":"gray"},{"text":"Puppeteer","bold":true,"color":"dark_gray"}]
execute unless entity @s[scores={r_class=5}] run tellraw @s [{"text":"Info: ","color":"gold"},{"text":"The Puppeteer can throw a projectile that summons a fake pair of boots. It will stun any gladiator that punches it.","italic":true,"color":"gray"}]
scoreboard players set @s sel_r_class 5
scoreboard players set @s r_class 5
item replace entity @s weapon.mainhand with minecraft:air
clear @s minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:x",lvl:1s}]}
playsound minecraft:entity.cow.step master @s ~ ~ ~ 1000 2
return 1