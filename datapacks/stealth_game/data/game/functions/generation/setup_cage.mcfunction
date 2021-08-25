kill @e[type=phantom,tag=cage_holder]
fill 1020 161 74 1022 161 76 spruce_slab[type=top]
fill 1020 162 74 1020 164 74 chain
fill 1020 162 76 1020 164 76 chain
fill 1022 162 76 1022 164 76 chain
fill 1022 162 74 1022 164 74 chain
fill 1020 165 76 1022 165 74 spruce_slab[type=bottom]
setblock 1021 165 75 minecraft:spruce_planks
fill 1021 166 75 1021 167 75 iron_bars
summon phantom 1021.4 167.5 76.0 {NoAI:1b,Invulnerable:1b,Tags:["cage_holder","die"],Rotation:[180.0f,0.0f],Size:15,PersistenceRequired:1b}