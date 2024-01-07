clear @s minecraft:carrot_on_a_stick{CustomModelData:2,join:1}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}]
item replace entity @s hotbar.5 with minecraft:carrot_on_a_stick{join:1,clickable:0,CustomModelData:2,display:{Name:'[{"text":"Press ","color":"red","bold":false,"italic":false},{"keybind":"key.use","color":"dark_red","bold":true},{"text":" to join.","color":"red","bold":false}]'}}
return 1