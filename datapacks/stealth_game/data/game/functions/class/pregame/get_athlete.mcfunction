clear @s minecraft:carrot_on_a_stick{CustomModelData:13}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:13}}}]
execute unless entity @s[scores={g_class=1}] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{CustomModelData:13,display:{Name:'[{"text":"Click to select ","color":"#ba666a","italic":false},{"text":"Athlete","color":"red","bold":true}]',Lore:['[{"text":"The Athlete has a shorter dash cooldown.","color":"red","italic":false}]']},HideFlags:63,Unbreakable:1b}
execute if entity @s[scores={g_class=1}] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:x",lvl:1s}],CustomModelData:13,display:{Name:'[{"text":"You have selected ","color":"#ba666a","italic":false},{"text":"Athlete","color":"red","bold":true}]',Lore:['[{"text":"The Athlete has a shorter dash cooldown.","color":"red","italic":false}]']},HideFlags:63,Unbreakable:1b}
return 1