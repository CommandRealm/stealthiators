execute as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if blocks 987 255 -12 1055 255 12 ~ 151 ~ all run scoreboard players remove $time game 12
execute as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if blocks 987 255 -12 1055 255 12 ~ 151 ~ all run scoreboard players add $long_left generation 1
execute as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if blocks 987 255 -12 1055 255 12 ~ 151 ~ all run scoreboard players add $segments_left generation 1
execute as @e[type=minecraft:area_effect_cloud,tag=generation] at @s unless blocks 987 255 -12 1055 255 12 ~ 151 ~ all run function game:generation/segment_over
return 1