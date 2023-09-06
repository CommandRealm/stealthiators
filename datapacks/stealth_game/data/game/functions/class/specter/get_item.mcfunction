# called to give the gladiator the specter item

clear @s carrot_on_a_stick{CustomModelData:19}
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:19}}}]
item replace entity @s hotbar.3 with carrot_on_a_stick{CustomModelData:19,HideFlags:63,display:{Name:'[{"translate":"☄ ","color":"dark_purple","bold":true,"italic":false},{"translate":"Invisibility","color":"gray","bold":false}]'}}