execute if entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=remove,tag=check_ready] run scoreboard players remove $number auto_ready 2
execute if entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=check_ready] run function options:ready/add_ready
return 1