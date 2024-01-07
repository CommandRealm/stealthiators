execute if entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=remove,tag=check_timer] run scoreboard players remove $time set_timer 2400
execute if entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=check_timer] run function options:timer/add_timer
return 1