execute if score $time game matches 20 run function game:generation/start
execute if score $time game matches 25 run function game:generation/reset
execute if score $time game matches 30 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/randomize_segment_tree
execute if score $time game matches 40 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/clone_segment_tree

execute if score $time game matches 55 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/randomize_segment_tree
execute if score $time game matches 65 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/clone_segment_tree

execute if score $time game matches 75 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/randomize_segment_tree
execute if score $time game matches 85 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/clone_segment_tree

execute if score $time game matches 90 unless entity @e[type=minecraft:area_effect_cloud,tag=generation] run function game:start
execute if score $time game matches 95 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/randomize_segment_tree
execute if score $time game matches 105 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/clone_segment_tree

execute if score $time game matches 155 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/randomize_segment_tree
execute if score $time game matches 165 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/clone_segment_tree

execute if score $time game matches 175 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/randomize_segment_tree
execute if score $time game matches 185 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/clone_segment_tree

execute if score $time game matches 195 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/randomize_segment_tree
execute if score $time game matches 205 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/clone_segment_tree

execute if score $time game matches 215 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/randomize_segment_tree
execute if score $time game matches 225 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/clone_segment_tree

execute if score $time game matches 235 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/randomize_segment_tree
execute if score $time game matches 245 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/clone_segment_tree

execute if score $time game matches 255 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/randomize_segment_tree
execute if score $time game matches 265 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/clone_segment_tree

execute if score $time game matches 275 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/randomize_segment_tree
execute if score $time game matches 285 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/clone_segment_tree

execute if score $time game matches 295 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/randomize_segment_tree
execute if score $time game matches 305 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/clone_segment_tree

execute if score $time game matches 315 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/randomize_segment_tree
execute if score $time game matches 325 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/clone_segment_tree

execute if score $time game matches 335 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/randomize_segment_tree
execute if score $time game matches 345 as @e[type=minecraft:area_effect_cloud,tag=generation] at @s if score $segments_left generation matches 1.. run function game:generation/clone_segment_tree
return 1