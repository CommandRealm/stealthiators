execute at @e[type=minecraft:area_effect_cloud,tag=revive_spot] run particle minecraft:dust 1 0 0 1 ~ ~10 ~ 0 10 0 0 50 force @a[tag=playing,scores={r_class=4},team=sneaker]
execute at @e[type=minecraft:area_effect_cloud,tag=revive_spot] run particle minecraft:damage_indicator ~ ~ ~ 0 0 0 0 1 force @a[tag=playing,scores={r_class=4},team=sneaker]
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned as @e[type=minecraft:area_effect_cloud,tag=revive_spot] positioned ~ ~.5 ~ run particle minecraft:crit ^ ^ ^0.5 0 0 0 0 1 force @a[tag=playing,scores={r_class=4},team=sneaker]
execute as @e[type=minecraft:area_effect_cloud,tag=revive_spot] at @s if entity @a[distance=..2,tag=!used_revive,scores={r_class=4,revive_crouch=1..},team=sneaker] run function game:class/medic/reviving
execute as @e[type=minecraft:area_effect_cloud,tag=revive_spot] at @s as @a[gamemode=adventure,distance=..2,tag=using_revive,scores={r_class=4},team=sneaker] unless entity @s[scores={revive_crouch=1..}] at @s run tag @s remove using_revive
##execute as @e[type=area_effect_cloud,tag=revive_spot] at @s unless entity @a[team=sneaker,gamemode=adventure,distance=..2,scores={r_class=4,revive_crouch=1..}] run scoreboard players reset @s revive_timer
scoreboard players reset @a[tag=!used_revive,scores={r_class=4,revive_crouch=0,revive_timer=1..},team=sneaker] revive_timer
scoreboard players reset @a[tag=!used_revive,scores={r_class=4},team=sneaker] revive_crouch
return 1