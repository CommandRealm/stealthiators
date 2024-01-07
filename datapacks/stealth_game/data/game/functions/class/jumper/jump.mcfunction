# called when the jumper jumps

# sound
playsound minecraft:block.note_block.bit master @s[scores={jump_level=1..}] ~ ~ ~ 1 0

# score resets
scoreboard players reset @s jumper_jump
scoreboard players set @s jump_level 0
scoreboard players reset @s jump_charge

# removing jump boost
effect clear @s minecraft:jump_boost



# clearing action bar
title @s actionbar [{"text":""}]
return 1