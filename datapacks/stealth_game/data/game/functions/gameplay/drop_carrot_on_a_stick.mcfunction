scoreboard players reset @s drop_c_o_a_s
clear @s minecraft:carrot_on_a_stick{CustomModelData:1}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}}]
execute unless entity @s[scores={dash_cooldown=1..}] run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick{CustomModelData:1,display:{Name:'{"text":"Dash","color":"#9dfff5","italic":false}'}}
execute if score $correct_band band_number matches 1.. run function game:gameplay/get_backdoor
return 1