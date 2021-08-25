team join red
tellraw @a [{"selector":"@s"},{"text":" is now a gladiator!","color":"dark_red"}]
tellraw @s [{"text":"You are now a gladiator! You will have no class for the rest of the round.","color":"gray"}]
team join gladiator
gamemode adventure @s
clear @s
effect clear @s
scoreboard players set @s g_class 0
tag @s add infected_gladiator
give @s trident{display:{Name:'{"text":"Trident","color":"#9c9558","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:loyalty",lvl:4}],HideFlags:63}
scoreboard players set @s dash_cooldown 1
tp @s 1021 151 -15 180 0
scoreboard players set $backdoor band_number 0
function game:gameplay/infection/respawn_tp
execute if score $tp_left band_number matches 0 if score $check_band band_number matches ..0 run tellraw @s [{"text":"Spawned on band ","color":"gold"},{"text":"#","color":"yelow","bold":true},{"score":{"objective":"band_number","name":"$correct_band"}}]
execute if score $check_band band_number matches 1.. run tellraw @s [{"text":"Spawned in final hallway.","color":"gold"}]
playsound minecraft:custom.teleport master @s ~ ~ ~ 100000 1.5
execute as @a[tag=playing] run playsound minecraft:entity.zoglin.attack master @s ~ ~ ~ 10000000000 0