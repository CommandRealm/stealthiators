kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}]
clear @s minecraft:carrot_on_a_stick{CustomModelData:1}
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick{CustomModelData:1,display:{Name:'{"text":"Dash","color":"#9dfff5","italic":false}'}}
return 1