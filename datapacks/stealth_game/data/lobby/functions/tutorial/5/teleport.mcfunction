execute at @e[type=minecraft:armor_stand,tag=tutorial_5_2] run playsound minecraft:block.note_block.flute master @a ~ ~ ~ 1 1.5
tp @e[type=minecraft:armor_stand,tag=tutorial_5_1] 191 80.05 -109
tp @e[type=minecraft:armor_stand,tag=tutorial_5_2] 191 80 -109
scoreboard players set @e[type=minecraft:armor_stand,tag=tutorial_5_2] tutorial 1

return 1