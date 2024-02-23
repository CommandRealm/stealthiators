execute as @e[type=minecraft:area_effect_cloud,tag=completionist_spin] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=minecraft:area_effect_cloud,tag=completionist_spin] at @s positioned as @a[tag=!playing,advancements={advancements:completionist/completionist=true}] positioned ^ ^ ^1 positioned ~ ~2.75 ~ run function completionist:particle
execute as @e[type=minecraft:area_effect_cloud,tag=completionist_spin] at @s positioned as @a[tag=!playing,advancements={advancements:completionist/completionist=true}] positioned ^ ^ ^-1 positioned ~ ~2.75 ~ run function completionist:particle
return 1