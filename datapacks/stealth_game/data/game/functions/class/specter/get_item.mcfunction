# called to give the gladiator the specter item

clear @s minecraft:carrot_on_a_stick{CustomModelData:19}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:19}}}]
item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick{CustomModelData:19,HideFlags:63,display:{Name:'[{"text":"☄ ","color":"dark_purple","bold":true,"italic":false},{"text":"Invisibility","color":"gray","bold":false}]'}}
return 1