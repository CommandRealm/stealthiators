execute at @e[tag=revive_spot,type=area_effect_cloud] run particle dust 1 0 0 1 ~ ~10 ~ 0 10 0 0 50 force @a[team=sneaker,tag=playing,scores={r_class=4}]
execute at @e[tag=revive_spot,type=area_effect_cloud] run particle minecraft:damage_indicator ~ ~ ~ 0 0 0 0 1 force @a[team=sneaker,tag=playing,scores={r_class=4}]
execute as @e[tag=spin,type=area_effect_cloud] at @s positioned as @e[tag=revive_spot,type=area_effect_cloud] positioned ~ ~.5 ~ run particle minecraft:crit ^ ^ ^0.5 0 0 0 0 1 force @a[team=sneaker,tag=playing,scores={r_class=4}]
execute as @e[type=area_effect_cloud,tag=revive_spot] at @s if entity @a[team=sneaker,tag=!used_revive,scores={r_class=4,revive_crouch=1..},distance=..2] run function game:class/medic/reviving
execute as @e[type=area_effect_cloud,tag=revive_spot] at @s as @a[team=sneaker,gamemode=adventure,distance=..2,scores={r_class=4},tag=using_revive] unless entity @s[scores={revive_crouch=1..}] at @s run tag @s remove using_revive
##execute as @e[type=area_effect_cloud,tag=revive_spot] at @s unless entity @a[team=sneaker,gamemode=adventure,distance=..2,scores={r_class=4,revive_crouch=1..}] run scoreboard players reset @s revive_timer
scoreboard players reset @a[team=sneaker,tag=!used_revive,scores={r_class=4,revive_crouch=0,revive_timer=1..}] revive_timer
scoreboard players reset @a[team=sneaker,tag=!used_revive,scores={r_class=4}] revive_crouch