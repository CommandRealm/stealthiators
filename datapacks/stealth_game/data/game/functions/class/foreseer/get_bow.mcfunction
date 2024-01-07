clear @s minecraft:bow
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bow"}}]
item replace entity @s hotbar.3 with minecraft:bow{display:{Name:'[{"text":"Bow","color":"green","italic":false}]'},Unbreakable:1b,HideFlags:63}

return 1