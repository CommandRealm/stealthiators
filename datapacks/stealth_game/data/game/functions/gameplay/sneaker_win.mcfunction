team join gold
execute if score $time game_timer matches ..1200 if score $time time_till_end matches -1 run advancement grant @s only minecraft:custom/step_on_finish_line_late
tellraw @a[tag=playing] [{"selector":"@s"},{"text":" has reached the end!","color":"gray"}]
summon firework_rocket ~ ~5 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 14602026]}]}}},LifeTime:24}
team join won @s
clear @s
gamemode spectator @s
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.7
bossbar remove game_timer
execute if score $time time_till_end matches -1 run scoreboard players operation $time time_till_end = $set_time time_till_end
bossbar add time_till_end [{"text":"The Game will be ending soon","color":"red"}]
bossbar set minecraft:time_till_end players @a[tag=playing]
execute store result bossbar minecraft:time_till_end max run scoreboard players get $set_time time_till_end
execute store result bossbar minecraft:time_till_end value run scoreboard players get $set_time time_till_end
scoreboard players add @s points 5
advancement grant @s only minecraft:custom/step_on_finish_line
scoreboard players operation @s adv_run += @s adv_blocks_run
advancement grant @s[scores={adv_run=30000..}] only minecraft:custom/run_300_blocks