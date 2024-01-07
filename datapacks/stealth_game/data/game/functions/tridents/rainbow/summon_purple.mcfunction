summon minecraft:item ~ ~ ~ {NoGravity:1b,Item:{id:"minecraft:purple_concrete",Count:1b},Age:5975,PickupDelay:1000,Tags:["die"]}
tag @s add trident_summoned_recently
tag @s remove trident_summoned_red
tag @s remove trident_summoned_orange
tag @s remove trident_summoned_yellow
tag @s remove trident_summoned_green
tag @s remove trident_summoned_blue
return 1