execute as @e[type=minecraft:area_effect_cloud,tag=trap_tp] at @s store result score @s compare_traps run data get entity @s Age 1
scoreboard players set $compare compare_traps 10000
execute as @e[type=minecraft:area_effect_cloud,tag=trap_tp] at @s run scoreboard players operation $compare compare_traps < @s compare_traps
execute as @e[type=minecraft:area_effect_cloud,tag=trap_tp] at @s run scoreboard players operation @s compare_traps -= $compare compare_traps
tp @s @e[type=minecraft:area_effect_cloud,tag=trap_tp,scores={compare_traps=0},sort=nearest,limit=1]
scoreboard players reset @s right_click
effect give @s minecraft:weakness 1 255
tellraw @s {"text":"Warped to trap.","color":"aqua"}
execute at @s run playsound minecraft:entity.evoker_fangs.attack master @s ~ ~ ~ 1000000 2
return 1