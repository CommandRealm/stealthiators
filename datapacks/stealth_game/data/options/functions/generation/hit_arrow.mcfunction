execute if entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=remove,tag=check_generation] run scoreboard players remove $auto generation 2
execute if entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=check_generation] run function options:generation/add_generation
return 1