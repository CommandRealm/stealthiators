# called to charge up the jump

# resetting cooldown
scoreboard players reset @s jump_charge



# adding level
execute unless score @s jump_level matches 4.. run scoreboard players add @s jump_level 1

# setting charge to 10 so it beeps faster indicating it's maxed out
scoreboard players set @s[scores={jump_level=4}] jump_charge 1

# giving effect
effect give @s[scores={jump_level=1}] jump_boost 1000000 1 true
effect give @s[scores={jump_level=2}] jump_boost 1000000 2 true
effect give @s[scores={jump_level=3}] jump_boost 1000000 3 true
effect give @s[scores={jump_level=4}] jump_boost 1000000 4 true
effect give @s[scores={jump_level=5}] jump_boost 1000000 5 true
effect give @s[scores={jump_level=6}] jump_boost 1000000 6 true
effect give @s[scores={jump_level=7}] jump_boost 1000000 7 true

# sound
playsound minecraft:block.note_block.bit master @s[scores={jump_level=1}] ~ ~ ~ 1 0.75
playsound minecraft:block.note_block.bit master @s[scores={jump_level=2}] ~ ~ ~ 1 0.85
playsound minecraft:block.note_block.bit master @s[scores={jump_level=3}] ~ ~ ~ 1 0.95
playsound minecraft:block.note_block.bit master @s[scores={jump_level=4}] ~ ~ ~ 1 1.05
playsound minecraft:block.note_block.bit master @s[scores={jump_level=5}] ~ ~ ~ 1 1.15
playsound minecraft:block.note_block.bit master @s[scores={jump_level=6}] ~ ~ ~ 1 1.25
playsound minecraft:block.note_block.bit master @s[scores={jump_level=7}] ~ ~ ~ 1 1.45