execute if score $time tp_nameplate matches 0 as @e[type=minecraft:area_effect_cloud,tag=teleport_nameplate] at @s run data merge entity @s {CustomName:'[{"text":"⚡ - TUTORIAL - ⚡","color":"#e3d666"}]'}
execute if score $time tp_nameplate matches 1 as @e[type=minecraft:area_effect_cloud,tag=teleport_nameplate] at @s run data merge entity @s {CustomName:'[{"text":"⚡","color":"#d28e2c"},{"text":" - TUTORIAL - ⚡","color":"#e3d666"}]'}
execute if score $time tp_nameplate matches 2 as @e[type=minecraft:area_effect_cloud,tag=teleport_nameplate] at @s run data merge entity @s {CustomName:'[{"text":"⚡","color":"#e3d666"},{"text":" -","color":"#d28e2c"},{"text":" TUTORIAL - ⚡","color":"#e3d666"}]'}
execute if score $time tp_nameplate matches 3 as @e[type=minecraft:area_effect_cloud,tag=teleport_nameplate] at @s run data merge entity @s {CustomName:'[{"text":"⚡ -","color":"#e3d666"},{"text":" T","color":"#d28e2c"},{"text":"UTORIAL - ⚡","color":"#e3d666"}]'}
execute if score $time tp_nameplate matches 4 as @e[type=minecraft:area_effect_cloud,tag=teleport_nameplate] at @s run data merge entity @s {CustomName:'[{"text":"⚡ - T","color":"#e3d666"},{"text":"U","color":"#d28e2c"},{"text":"TORIAL - ⚡","color":"#e3d666"}]'}
execute if score $time tp_nameplate matches 5 as @e[type=minecraft:area_effect_cloud,tag=teleport_nameplate] at @s run data merge entity @s {CustomName:'[{"text":"⚡ - TU","color":"#e3d666"},{"text":"T","color":"#d28e2c"},{"text":"ORIAL - ⚡","color":"#e3d666"}]'}
execute if score $time tp_nameplate matches 6 as @e[type=minecraft:area_effect_cloud,tag=teleport_nameplate] at @s run data merge entity @s {CustomName:'[{"text":"⚡ - TUT","color":"#e3d666"},{"text":"O","color":"#d28e2c"},{"text":"RIAL - ⚡","color":"#e3d666"}]'}
return 1