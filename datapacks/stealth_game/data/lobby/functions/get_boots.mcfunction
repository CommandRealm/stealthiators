clear @s carrot_on_a_stick{CustomModelData:4}
kill @e[type=item,nbt={Item:{id:"minecraft:iron_boots"}}]
clear @s iron_boots
item replace entity @s armor.feet with iron_boots{clickable:0,HideFlags:63,display:{Name:'[{"text":"Boots","color":"gray","italic":false}]'},AttributeModifiers:[{Attribute:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]}],Unbreakable:1b} 1