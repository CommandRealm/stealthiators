clear @s carrot_on_a_stick{CustomModelData:2,spectate:1}
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}]
replaceitem entity @s hotbar.3 carrot_on_a_stick{spectate:1,clickable:0,CustomModelData:2,display:{Name:'[{"text":"Press ","color":"white","bold":false,"italic":false},{"keybind":"key.use","color":"gray","bold":true},{"text":" to spectate.","color":"white","bold":false}]'}}