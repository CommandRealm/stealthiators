clear @s carrot_on_a_stick{CustomModelData:12}
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:12}}}]
execute unless entity @s[scores={r_class=4}] run item replace entity @s hotbar.3 with carrot_on_a_stick{CustomModelData:12,display:{Name:'[{"translate":"Click to select ","color":"dark_gray","italic":false},{"translate":"Medic","color":"gray","bold":true}]',Lore:['[{"translate":"The Medic can revive up to two caught runners by crouching where they died.","color":"gray","italic":false}]']},HideFlags:63,Unbreakable:1b}
execute if entity @s[scores={r_class=4}] run item replace entity @s hotbar.3 with carrot_on_a_stick{Enchantments:[{id:"x",lvl:1}],CustomModelData:12,display:{Name:'[{"translate":"You have selected ","color":"dark_gray","italic":false},{"translate":"Medic","color":"gray","bold":true}]',Lore:['[{"translate":"The Medic can revive up to two caught runners by crouching where they died.","color":"gray","italic":false}]']},HideFlags:63,Unbreakable:1b}