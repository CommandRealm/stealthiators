execute if entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=check_timer] run function options:timer/hit_arrow
execute unless entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=check_timer] if entity @s[distance=..4.5] positioned ^ ^ ^0.09 run function options:timer/raycast

return 1