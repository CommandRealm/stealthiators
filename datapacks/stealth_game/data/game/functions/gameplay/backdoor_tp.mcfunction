
scoreboard players operation $correct_band band_number = $number band_number
scoreboard players add $correct_band band_number 2
scoreboard players operation $tp_left band_number = $correct_band band_number
scoreboard players operation $tp_left band_number -= $backdoor band_number

scoreboard players operation $total_segments band_number = $segments generation
scoreboard players operation $check_band band_number = $correct_band band_number
scoreboard players operation $check_band band_number -= $total_segments band_number

execute if score $check_band band_number matches 1.. run effect give @s minecraft:slow_falling 1 2 true
execute if score $check_band band_number matches 1.. run tp @s @e[type=minecraft:area_effect_cloud,tag=final_hallway,sort=nearest,limit=1]
execute if score $check_band band_number matches ..0 if score $tp_left band_number matches 1..10 at @s run tp @s ~ ~ ~30
scoreboard players add $backdoor band_number 1
execute if score $check_band band_number matches ..0 unless score $tp_left band_number matches 1..10 at @s unless block ~ ~ ~ minecraft:structure_void run tp @s ~ ~ ~-1
execute if score $check_band band_number matches ..0 if score $tp_left band_number matches 1..10 run function game:gameplay/backdoor_tp
return 1