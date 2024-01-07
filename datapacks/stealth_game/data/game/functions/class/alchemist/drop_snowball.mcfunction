kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:snowball"}}]
clear @s minecraft:snowball
give @s minecraft:snowball{HideFlags:63,display:{Name:'[{"text":"Smoke Bomb","color":"#6c6c6c","italic":false}]',Lore:['[{"text":"Throw at a gladiator to blind them.","color":"dark_gray"}]']}}
scoreboard players reset @s drop_snowball
return 1