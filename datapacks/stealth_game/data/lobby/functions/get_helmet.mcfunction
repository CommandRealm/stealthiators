clear @s minecraft:iron_boots
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
clear @s minecraft:carrot_on_a_stick{CustomModelData:4,helmet:1}
item replace entity @s armor.head with minecraft:carrot_on_a_stick{clickable:0,CustomModelData:4,display:{Name:'{"text":"Helmet","color":"red","italic":false}'},HideFlags:63,helmet:1}
return 1