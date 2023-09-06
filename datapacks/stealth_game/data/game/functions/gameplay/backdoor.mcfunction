tp @s 1021 156.5 -15 180 0
scoreboard players set $backdoor band_number 0
effect give @s slow_falling 2 100 true
function game:gameplay/backdoor_tp
execute if score $tp_left band_number matches 0 if score $check_band band_number matches ..0 run tellraw @s [{"translate":"Teleported to band ","color":"gold"},{"translate":"#","color":"yelow","bold":true},{"score":{"objective":"band_number","name":"$correct_band"}}]
execute if score $check_band band_number matches 1.. run tellraw @s [{"translate":"Teleported to final hallway.","color":"gold"}]
execute if score $check_band band_number matches 1.. run effect clear @s slow_falling
advancement grant @s only minecraft:custom/use_backdoor
scoreboard players set @s adv_backdoor 600
scoreboard players reset @s right_click
playsound minecraft:custom.teleport master @s ~ ~ ~ 100000 1.5
clear @s carrot_on_a_stick{CustomModelData:5}
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 0.3 1.5