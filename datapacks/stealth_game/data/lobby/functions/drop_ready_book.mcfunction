##Called when we drop the ready book

##resetting score
scoreboard players reset @s drop_ready_book

tp @s 42 67 -40 75 -30

execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
execute at @s run particle cloud ~ ~1 ~ 0.25 0.5 0.25 0.15 20 normal @s