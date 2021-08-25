scoreboard players operation $total_segments band_number = $segments generation
scoreboard players operation $check_band band_number = $correct_band band_number
scoreboard players operation $check_band band_number -= $total_segments band_number


clear @s carrot_on_a_stick{CustomModelData:5}
kill @e[type=item,nbt={Item:{tag:{CustomModelData:5}}}]
execute if score $check_band band_number matches 1.. run replaceitem entity @s hotbar.4 carrot_on_a_stick{HideFlags:63,CustomModelData:5,display:{Name:'[{"text":"Click to warp to the final hallway","color":"red","italic":false}]'}}
execute if score $check_band band_number matches ..0 run loot replace entity @s hotbar.4 loot minecraft:backdoor