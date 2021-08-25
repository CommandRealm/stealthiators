kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}]
clear @s carrot_on_a_stick{CustomModelData:1}
replaceitem entity @s hotbar.1 carrot_on_a_stick{CustomModelData:1,display:{Name:'{"text":"Dash","color":"#9dfff5","italic":false}'}}