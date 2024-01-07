execute if entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=remove,tag=check_gladiators] run scoreboard players remove $number gladiators 2
execute if entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=check_gladiators] run function options:gladiators/add_gladiator
return 1