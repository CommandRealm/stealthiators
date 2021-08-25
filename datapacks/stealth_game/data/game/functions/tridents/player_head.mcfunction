execute if entity @s[tag=playing] run execute as @r[tag=playing] run loot spawn ~ ~ ~ loot minecraft:head
execute if entity @s[tag=!playing] run execute as @r[distance=..400] run loot spawn ~ ~ ~ loot minecraft:head
data merge entity @e[type=item,nbt={Item:{id:"minecraft:player_head"}},sort=nearest,limit=1] {Age:5975,PickupDelay:1000,Tags:["die"]}