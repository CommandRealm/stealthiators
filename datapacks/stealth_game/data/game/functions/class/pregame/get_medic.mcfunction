clear @s minecraft:carrot_on_a_stick{CustomModelData:12}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:12}}}]
execute unless entity @s[scores={r_class=4}] run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick{CustomModelData:12,display:{Name:'[{"text":"Click to select ","color":"dark_gray","italic":false},{"text":"Medic","color":"gray","bold":true}]',Lore:['[{"text":"The Medic can revive up to two caught runners by crouching where they died.","color":"gray","italic":false}]']},HideFlags:63,Unbreakable:1b}
execute if entity @s[scores={r_class=4}] run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:x",lvl:1s}],CustomModelData:12,display:{Name:'[{"text":"You have selected ","color":"dark_gray","italic":false},{"text":"Medic","color":"gray","bold":true}]',Lore:['[{"text":"The Medic can revive up to two caught runners by crouching where they died.","color":"gray","italic":false}]']},HideFlags:63,Unbreakable:1b}
return 1