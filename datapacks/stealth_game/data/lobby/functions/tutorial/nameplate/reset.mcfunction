execute as @e[type=area_effect_cloud,tag=teleport_nameplate_2] at @s run data merge entity @s {CustomName:'[{"translate":"⚡ - LOBBY -","color":"#e3d666"},{"translate":" ⚡","color":"#d28e2c"}]'}
scoreboard players set $time2 tp_nameplate -1