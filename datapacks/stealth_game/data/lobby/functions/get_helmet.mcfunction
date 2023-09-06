clear @s iron_boots
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
clear @s carrot_on_a_stick{CustomModelData:4,helmet:1}
item replace entity @s armor.head with carrot_on_a_stick{clickable:0,CustomModelData:4,display:{Name:'{"translate":"Helmet","color":"red","italic":false}'},HideFlags:63,helmet:1}