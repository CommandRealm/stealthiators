kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}]
clear @s carrot_on_a_stick{CustomModelData:1}
item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:1,display:{Name:'{"translate":"Dash","color":"#9dfff5","italic":false}'}}