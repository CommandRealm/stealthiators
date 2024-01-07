clear @s minecraft:compass
scoreboard players reset @s locator
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:compass"}}]
title @s actionbar " "
return 1