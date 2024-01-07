execute if entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=check_med] run function options:med/hit_arrow
execute unless entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=check_med] if entity @s[distance=..4.5] positioned ^ ^ ^0.09 run function options:med/raycast

return 1