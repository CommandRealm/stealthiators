kill @e[type=falling_block]
kill @e[tag=generation]
summon area_effect_cloud 987 135 -12 {Duration:1000000000,Tags:["generation"]}
kill @e[tag=mark_band]
scoreboard players operation $segments_left generation = $segments generation
scoreboard players operation $long_left generation = $long generation
scoreboard players operation $med_left generation = $med generation
scoreboard players operation $small_left generation = $small generation
forceload add 2340 127 1980 -21
forceload add 2340 127 2405 -21
forceload add 1070 341 920 100
forceload add 1070 99 920 -91
fill 1026 172 286 1016 182 44 air
scoreboard players set $number sign 0
execute as @a[tag=playing] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1000 1.5