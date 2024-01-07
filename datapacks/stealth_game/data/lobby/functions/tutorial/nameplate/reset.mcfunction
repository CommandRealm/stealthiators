execute as @e[type=minecraft:area_effect_cloud,tag=teleport_nameplate_2] at @s run data merge entity @s {CustomName:'[{"text":"⚡ - LOBBY -","color":"#e3d666"},{"text":" ⚡","color":"#d28e2c"}]'}
scoreboard players set $time2 tp_nameplate -1
return 1