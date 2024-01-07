clear @a minecraft:carrot_on_a_stick{CustomModelData:7}
item replace entity @s hotbar.5 with minecraft:carrot_on_a_stick{CustomModelData:7,display:{Name:'{"text":"Click to warp to a recently triggered trap","color":"aqua","italic":false}'}}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}}]
return 1