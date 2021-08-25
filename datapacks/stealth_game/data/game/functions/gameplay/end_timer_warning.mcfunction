execute if score $minute bossbar_time matches 0 if score $second bossbar_time matches 10 run tellraw @a[tag=playing,team=sneaker] {"text":"Time is running out! Get to the finish line quickly!","color":"gray"}
execute if score $minute bossbar_time matches 0 if score $second bossbar_time matches 10 run tellraw @a[tag=playing,team=gladiator] {"text":"Time is running out! Just hold the runners from touching the finish line!","color":"red"}
execute if score $minute bossbar_time matches 0 if score $second bossbar_time matches 5 as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100000 2
execute if score $minute bossbar_time matches 0 if score $second bossbar_time matches 4 as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100000 1.9
execute if score $minute bossbar_time matches 0 if score $second bossbar_time matches 3 as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100000 1.8
execute if score $minute bossbar_time matches 0 if score $second bossbar_time matches 2 as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100000 1.75
execute if score $minute bossbar_time matches 0 if score $second bossbar_time matches 1 as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100000 1.25
execute if score $minute bossbar_time matches 0 if score $second bossbar_time matches 5 as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100000 1
execute if score $minute bossbar_time matches 0 if score $second bossbar_time matches 4 as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100000 0.9
execute if score $minute bossbar_time matches 0 if score $second bossbar_time matches 3 as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100000 0.8
execute if score $minute bossbar_time matches 0 if score $second bossbar_time matches 2 as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100000 0.75
execute if score $minute bossbar_time matches 0 if score $second bossbar_time matches 1 as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100000 0.25
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.25 0
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.5 0.5