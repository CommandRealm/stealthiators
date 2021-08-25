scoreboard players reset @s throw_trident
execute if entity @s[scores={trident_effects=1..}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_effect
execute if entity @s[scores={trident_effects=1}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_1
execute if entity @s[scores={trident_effects=2}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_2
execute if entity @s[scores={trident_effects=3}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_3
execute if entity @s[scores={trident_effects=4}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_4
execute if entity @s[scores={trident_effects=5}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_5
execute if entity @s[scores={trident_effects=6}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_6
execute if entity @s[scores={trident_effects=7}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_7
execute if entity @s[scores={trident_effects=8}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_8
execute if entity @s[scores={trident_effects=9}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_9
execute if entity @s[scores={trident_effects=10}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_10
execute if entity @s[scores={trident_effects=11}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_11
execute if entity @s[scores={trident_effects=12}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_12
execute if entity @s[scores={trident_effects=13}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_13
execute if entity @s[scores={trident_effects=14}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_14
execute if entity @s[scores={trident_effects=15}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_15
execute if entity @s[scores={trident_effects=16}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_16
execute if entity @s[scores={trident_effects=17}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_17
execute if entity @s[scores={trident_effects=18}] positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add trident_18
execute positioned ~ ~1 ~ run tag @e[type=trident,sort=nearest,limit=1,tag=!tagged_trident] add tagged_trident