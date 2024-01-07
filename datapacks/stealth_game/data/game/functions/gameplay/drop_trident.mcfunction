scoreboard players reset @s drop_trident
clear @s minecraft:trident
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:trident"}}]
give @s minecraft:trident{display:{Name:'{"text":"Trident","color":"#9c9558","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:loyalty",lvl:4s}],HideFlags:63}
return 1