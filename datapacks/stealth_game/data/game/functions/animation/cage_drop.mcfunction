fill 1020 161 74 1022 167 76 air
summon falling_block 1020 161.5 74 {BlockState:{Name:"spruce_slab"},Time:1,Tags:["die","falling_platform"]}
summon falling_block 1021 161.5 74 {BlockState:{Name:"spruce_slab"},Time:1,Tags:["die","falling_platform"]}
summon falling_block 1022 161.5 74 {BlockState:{Name:"spruce_slab"},Time:1,Tags:["die","falling_platform"]}

summon falling_block 1020 161.5 75 {BlockState:{Name:"spruce_slab"},Time:1,Tags:["die","falling_platform"]}
summon falling_block 1021 161.5 75 {BlockState:{Name:"spruce_slab"},Time:1,Tags:["die","falling_platform"]}
summon falling_block 1022 161.5 75 {BlockState:{Name:"spruce_slab"},Time:1,Tags:["die","falling_platform"]}

summon falling_block 1020 161.5 76 {BlockState:{Name:"spruce_slab"},Time:1,Tags:["die","falling_platform"]}
summon falling_block 1021 161.5 76 {BlockState:{Name:"spruce_slab"},Time:1,Tags:["die","falling_platform"]}
summon falling_block 1022 161.5 76 {BlockState:{Name:"spruce_slab"},Time:1,Tags:["die","falling_platform"]}

execute as @a[tag=playing,team=gladiator] at @s run playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~ ~ 1 0.75