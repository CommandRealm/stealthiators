scoreboard players reset @s drop_trident
clear @s trident
kill @e[type=item,nbt={Item:{id:"minecraft:trident"}}]
give @s trident{display:{Name:'{"translate":"Trident","color":"#9c9558","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:loyalty",lvl:4}],HideFlags:63}