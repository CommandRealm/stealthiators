clear @s bow
kill @e[type=item,nbt={Item:{id:"minecraft:bow"}}]
item replace entity @s hotbar.3 with bow{display:{Name:'[{"text":"Bow","color":"green","italic":false}]'},Unbreakable:1b,HideFlags:63}
