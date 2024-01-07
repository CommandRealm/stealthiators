execute if entity @s[tag=playing] as @r[tag=playing] run loot spawn ~ ~ ~ loot minecraft:head
execute if entity @s[tag=!playing] as @r[distance=..400] run loot spawn ~ ~ ~ loot minecraft:head
data merge entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:player_head"}}] {Age:5975,PickupDelay:1000,Tags:["die"]}
return 1