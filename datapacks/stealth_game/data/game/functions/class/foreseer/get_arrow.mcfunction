# called to give the arrow
clear @s minecraft:spectral_arrow
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:spectral_arrow"}}]
item replace entity @s hotbar.8 with minecraft:spectral_arrow{display:{Name:'[{"text":"Arrow","color":"gold","italic":false}]'}}
return 1