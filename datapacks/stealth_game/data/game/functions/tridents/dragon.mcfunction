tag @s add dragon_particles
execute as @e[type=area_effect_cloud,tag=spin] at @s positioned as @e[tag=dragon_particles,type=trident] run particle flame ^1 ^ ^1 0 0 0 0 1 force @a
execute as @e[type=area_effect_cloud,tag=spin] at @s positioned as @e[tag=dragon_particles,type=trident] run particle flame ^-1 ^ ^-1 0 0 0 0 1 force @a
tag @s remove dragon_particles