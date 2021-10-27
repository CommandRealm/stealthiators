# called to give the arrow
clear @s spectral_arrow
kill @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow"}}]
item replace entity @s hotbar.8 with spectral_arrow{display:{Name:'[{"text":"Arrow","color":"gold","italic":false}]'}}