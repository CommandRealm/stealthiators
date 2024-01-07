execute at @s[y=220,distance=..20] run tp @s ~ 199 ~
execute at @s[y=120,distance=..20] run tp @s ~ 150 ~
tellraw @s [{"text":"Please stay in the arena!","color":"red"}]
playsound minecraft:block.note_block.flute master @s ~ ~ ~ 100000 0

return 1