clear @s minecraft:carrot_on_a_stick{CustomModelData:14}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:14}}}]
execute unless entity @s[scores={g_class=3}] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{CustomModelData:14,display:{Name:'[{"text":"Click to select ","color":"#ba666a","italic":false},{"text":"Trapper","color":"red","bold":true}]',Lore:['[{"text":"The Trapper starts with two runner traps.","color":"red","italic":false}]']},HideFlags:63,Unbreakable:1b}
execute if entity @s[scores={g_class=3}] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:x",lvl:1s}],CustomModelData:14,display:{Name:'[{"text":"You have selected ","color":"#ba666a","italic":false},{"text":"Trapper","color":"red","bold":true}]',Lore:['[{"text":"The Trapper starts with two runner traps.","color":"red","italic":false}]']},HideFlags:63,Unbreakable:1b}
return 1