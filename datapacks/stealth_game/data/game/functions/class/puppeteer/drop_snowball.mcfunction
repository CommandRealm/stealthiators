kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:snowball"}}]
clear @s minecraft:snowball
give @s minecraft:snowball{CustomModelData:1,HideFlags:63,display:{Name:'[{"text":"Fake Boots","color":"gold","italic":false}]',Lore:['[{"text":"Throw to summon fake boots.","color":"dark_gray"}]']}}
scoreboard players reset @s drop_snowball
return 1