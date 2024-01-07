clear @s minecraft:carrot_on_a_stick{CustomModelData:4}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_boots"}}]
clear @s minecraft:iron_boots
item replace entity @s armor.feet with minecraft:iron_boots{clickable:0,HideFlags:63,display:{Name:'[{"text":"Boots","color":"gray","italic":false}]'},AttributeModifiers:[{Attribute:"generic.armor",AttributeName:"minecraft:generic.armor",Amount:0.0d,UUID:[I;300,300,300,300]}],Unbreakable:1b} 1
return 1