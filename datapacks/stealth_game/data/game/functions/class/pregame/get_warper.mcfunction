clear @s carrot_on_a_stick{CustomModelData:8}
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}}]
execute unless entity @s[scores={r_class=3}] run item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:8,display:{Name:'[{"translate":"Click to select ","color":"dark_gray","italic":false},{"translate":"Warper","color":"gray","bold":true}]',Lore:['[{"translate":"The Warper can teleport back to their position five seconds ago.","color":"gray","italic":false}]']},HideFlags:63,Unbreakable:1b}
execute if entity @s[scores={r_class=3}] run item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{id:"x",lvl:1}],CustomModelData:8,display:{Name:'[{"translate":"You have selected ","color":"dark_gray","italic":false},{"translate":"Warper","color":"gray","bold":true}]',Lore:['[{"translate":"The Warper can teleport back to their position five seconds ago.","color":"gray","italic":false}]']},HideFlags:63,Unbreakable:1b}