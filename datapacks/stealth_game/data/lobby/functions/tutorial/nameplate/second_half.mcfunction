execute if score $time2 tp_nameplate matches 5 as @e[type=minecraft:area_effect_cloud,tag=teleport_nameplate_2] at @s run data merge entity @s {CustomName:'[{"text":"⚡ - LO","color":"#e3d666"},{"text":"B","color":"#d28e2c"},{"text":"BY - ⚡","color":"#e3d666"}]'}
execute if score $time2 tp_nameplate matches 6 as @e[type=minecraft:area_effect_cloud,tag=teleport_nameplate_2] at @s run data merge entity @s {CustomName:'[{"text":"⚡ - LOB","color":"#e3d666"},{"text":"B","color":"#d28e2c"},{"text":"Y - ⚡","color":"#e3d666"}]'}
execute if score $time2 tp_nameplate matches 7 as @e[type=minecraft:area_effect_cloud,tag=teleport_nameplate_2] at @s run data merge entity @s {CustomName:'[{"text":"⚡ - LOBB","color":"#e3d666"},{"text":"Y","color":"#d28e2c"},{"text":" - ⚡","color":"#e3d666"}]'}
execute if score $time2 tp_nameplate matches 8 as @e[type=minecraft:area_effect_cloud,tag=teleport_nameplate_2] at @s run data merge entity @s {CustomName:'[{"text":"⚡ - LOBBY ","color":"#e3d666"},{"text":"-","color":"#d28e2c"},{"text":" ⚡","color":"#e3d666"}]'}
execute if score $time2 tp_nameplate matches 9.. run function lobby:tutorial/nameplate/reset

return 1