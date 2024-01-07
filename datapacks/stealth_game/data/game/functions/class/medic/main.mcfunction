execute if entity @a[tag=!used_revive,scores={r_class=4},team=sneaker] if entity @e[type=minecraft:area_effect_cloud,tag=revive_spot] run function game:class/medic/possible_revive
execute as @a[tag=using_revive,scores={r_class=4},team=sneaker] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..2,tag=revive_spot] run tag @s remove using_revive
scoreboard players add $time heartbeat 1
execute if score $time heartbeat matches 10 run scoreboard players set $time heartbeat 0
execute if score $time heartbeat matches 1 as @a[gamemode=adventure,tag=!used_revive,scores={r_class=4,revives=2..},team=sneaker] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..2,scores={revive_timer=1..}] run title @s actionbar [{"text":"❤","color":"red"},{"text":" ","color":"red"},{"text":"❤","color":"red"}]
execute if score $time heartbeat matches 6 as @a[gamemode=adventure,tag=!used_revive,scores={r_class=4,revives=2..},team=sneaker] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..2,scores={revive_timer=1..}] run title @s actionbar [{"text":"♥","color":"red"},{"text":" ","color":"red"},{"text":"♥","color":"red"}]
execute if score $time heartbeat matches 1 as @a[gamemode=adventure,tag=!used_revive,scores={r_class=4,revives=1},team=sneaker] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..2,scores={revive_timer=1..}] run title @s actionbar [{"text":"❤","color":"red"}]
execute if score $time heartbeat matches 6 as @a[gamemode=adventure,tag=!used_revive,scores={r_class=4,revives=1},team=sneaker] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..2,scores={revive_timer=1..}] run title @s actionbar [{"text":"♥","color":"red"}]
execute as @a[tag=used_revive,scores={r_class=4},team=sneaker] at @s run title @s actionbar [{"text":"♥","color":"dark_gray"}]

return 1