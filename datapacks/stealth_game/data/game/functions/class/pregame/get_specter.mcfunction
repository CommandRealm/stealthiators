clear @s carrot_on_a_stick{CustomModelData:19}
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:19}}}]
execute unless entity @s[scores={g_class=5}] run item replace entity @s hotbar.4 with carrot_on_a_stick{CustomModelData:19,display:{Name:'[{"text":"Click to select ","color":"#ba666a","italic":false},{"text":"Specter","color":"red","bold":true}]',Lore:['[{"text":"The Specter can go invisible periodically.","color":"red","italic":false}]']},HideFlags:63,Unbreakable:1b}
execute if entity @s[scores={g_class=5}] run item replace entity @s hotbar.4 with carrot_on_a_stick{Enchantments:[{}],CustomModelData:19,display:{Name:'[{"text":"You have selected ","color":"#ba666a","italic":false},{"text":"Specter","color":"red","bold":true}]',Lore:['[{"text":"The Specter can go invisible periodically.","color":"red","italic":false}]']},HideFlags:63,Unbreakable:1b}