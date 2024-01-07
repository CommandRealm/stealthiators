tag @s add dragon_particles
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned as @e[type=minecraft:trident,tag=dragon_particles] run particle minecraft:flame ^1 ^ ^1 0 0 0 0 1 force @a
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s positioned as @e[type=minecraft:trident,tag=dragon_particles] run particle minecraft:flame ^-1 ^ ^-1 0 0 0 0 1 force @a
tag @s remove dragon_particles
return 1