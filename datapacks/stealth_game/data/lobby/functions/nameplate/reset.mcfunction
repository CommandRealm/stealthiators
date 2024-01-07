execute if score $time tp_nameplate matches 12 as @e[type=minecraft:area_effect_cloud,tag=teleport_nameplate] at @s run data merge entity @s {CustomName:'[{"text":"⚡ - TUTORIAL - ","color":"#e3d666"},{"text":"⚡","color":"#d28e2c"}]'}
scoreboard players set $time tp_nameplate -1
return 1