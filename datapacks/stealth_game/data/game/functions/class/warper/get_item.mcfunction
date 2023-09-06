clear @s carrot_on_a_stick{CustomModelData:8}
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}}]
item replace entity @s hotbar.0 with carrot_on_a_stick{CustomModelData:8,Unbreakable:1b,HideFlags:63,display:{Name:'[{"translate":"Click to teleport to your position five seconds ago.","color":"dark_purple","italic":false}]'}}