kill @e[type=item,nbt={Item:{id:"minecraft:snowball"}}]
clear @s snowball
give @s snowball{CustomModelData:1,HideFlags:63,display:{Name:'[{"text":"Fake Boots","color":"gold","italic":false}]',Lore:['[{"text":"Throw to summon fake boots.","color":"dark_gray"}]']}}
scoreboard players reset @s drop_snowball