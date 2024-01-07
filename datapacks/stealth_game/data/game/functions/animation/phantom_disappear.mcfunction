execute at @e[type=minecraft:phantom,tag=die] run particle minecraft:witch ~ ~ ~ 1 2 0 0 500
tp @e[type=minecraft:phantom,tag=die] 0 0 0
kill @e[type=minecraft:phantom,tag=die]
kill @e[tag=temporary_cage]

return 1