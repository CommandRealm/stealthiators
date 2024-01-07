execute if entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=remove,tag=check_infection] run scoreboard players remove $number infection 2
execute if entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=check_infection] run function options:infection/add_infection
return 1