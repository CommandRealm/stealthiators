clear @a carrot_on_a_stick{CustomModelData:7}
replaceitem entity @s hotbar.5 carrot_on_a_stick{CustomModelData:7,display:{Name:'{"text":"Click to warp to a recently triggered trap","color":"aqua","italic":false}'}}
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}}]