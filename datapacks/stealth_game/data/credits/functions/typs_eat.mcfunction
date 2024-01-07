scoreboard players set $direction typs_direction 0
item replace entity @e[type=minecraft:armor_stand,tag=typs] weapon.mainhand with minecraft:air
execute at @e[type=minecraft:armor_stand,tag=typs] run particle minecraft:block minecraft:soul_soil ~ ~1.75 ~ 0.05 0.05 0.05 0.5 25 force @a
execute at @e[type=minecraft:armor_stand,tag=typs] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 0.15 1

return 1