kill @e[type=item,nbt={Item:{id:"minecraft:snowball"}}]
clear @s snowball
give @s snowball{CustomModelData:1,HideFlags:63,display:{Name:'[{"translate":"Fake Boots","color":"gold","italic":false}]',Lore:['[{"translate":"Throw to summon fake boots.","color":"dark_gray"}]']}}
scoreboard players reset @s drop_snowball