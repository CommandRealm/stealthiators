execute at @e[type=minecraft:trident,tag=trident_1] run particle minecraft:reverse_portal ~ ~ ~ 0.25 0.25 0.25 0.05 3 force @a
execute at @e[type=minecraft:trident,tag=trident_2] run particle minecraft:dripping_water ~ ~ ~ 0 0 0 0.0 1 force @a
execute as @e[type=minecraft:trident,tag=trident_3] at @s run function game:tridents/witch
execute as @e[type=minecraft:trident,tag=trident_4] at @s run function game:tridents/flower/summon
execute as @e[type=minecraft:trident,tag=trident_5] at @s run function game:tridents/end_rod
execute as @e[type=minecraft:trident,tag=trident_6] at @s run function game:tridents/spawn_egg/summon
execute as @e[type=minecraft:trident,tag=trident_7] at @s run function game:tridents/dragon
execute at @e[type=minecraft:trident,tag=trident_14] run function game:tridents/x
execute as @e[type=minecraft:trident,tag=trident_9] at @s run function game:tridents/storm
execute at @e[type=minecraft:trident,tag=trident_10] run particle minecraft:squid_ink ~ ~ ~ 0 0 0 0.0 1 force @a
execute at @e[type=minecraft:trident,tag=trident_11] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potato",Count:1b},Age:5975,PickupDelay:1000,Tags:["die"]}
execute as @e[type=minecraft:trident,tag=trident_12] at @s run function game:tridents/rainbow/summon
execute as @e[type=minecraft:trident,tag=trident_13,tag=!said_wee] at @s run function game:tridents/wee
execute at @e[type=minecraft:trident,tag=trident_15] run function game:tridents/flame_bar
execute at @e[type=minecraft:trident,tag=trident_8] run function game:tridents/magic
execute at @e[type=minecraft:trident,tag=trident_16] run function game:tridents/melon
execute as @e[type=minecraft:trident,tag=trident_17] at @s run function game:tridents/player_head
execute as @e[type=minecraft:trident,tag=trident_18,tag=!said_melon_man] at @s run function game:tridents/melon_man
return 1