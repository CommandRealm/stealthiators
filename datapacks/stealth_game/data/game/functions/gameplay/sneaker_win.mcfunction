team join gold
execute if score $time game_timer matches ..1200 if score $time time_till_end matches -1 run advancement grant @s only minecraft:custom/step_on_finish_line_late
summon firework_rocket ~ ~5 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 14602026]}]}}},LifeTime:24}
team join won @s
clear @s
gamemode spectator @s
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.7
bossbar remove game_timer
bossbar add time_till_end [{"text":"The Game will be ending soon","color":"red"}]

execute if score $time time_till_end matches -1 run bossbar set minecraft:time_till_end players @a[tag=playing]
execute if score $time time_till_end matches -1 run scoreboard players operation $time time_till_end = $set_time time_till_end

execute store result bossbar minecraft:time_till_end max run scoreboard players get $set_time time_till_end
execute store result bossbar minecraft:time_till_end value run scoreboard players get $set_time time_till_end
scoreboard players add @s points 5
execute if score $player_finish game matches 0 run scoreboard players add @s points 1
scoreboard players set $player_finish game 1
advancement grant @s only minecraft:custom/step_on_finish_line
scoreboard players operation @s adv_run += @s adv_blocks_run
advancement grant @s[scores={adv_run=30000..}] only minecraft:custom/run_300_blocks

# if we were revived
execute if entity @s[tag=revived_by_1] run tag @a[tag=playing,scores={runner_id=1}] add temp_tag
execute if entity @s[tag=revived_by_2] run tag @a[tag=playing,scores={runner_id=2}] add temp_tag
execute if entity @s[tag=revived_by_3] run tag @a[tag=playing,scores={runner_id=3}] add temp_tag
execute if entity @s[tag=revived_by_4] run tag @a[tag=playing,scores={runner_id=4}] add temp_tag
execute if entity @s[tag=revived_by_5] run tag @a[tag=playing,scores={runner_id=5}] add temp_tag
execute if entity @s[tag=revived_by_6] run tag @a[tag=playing,scores={runner_id=6}] add temp_tag
execute if entity @s[tag=revived_by_7] run tag @a[tag=playing,scores={runner_id=7}] add temp_tag
execute if entity @s[tag=revived_by_8] run tag @a[tag=playing,scores={runner_id=8}] add temp_tag
execute if entity @s[tag=revived_by_9] run tag @a[tag=playing,scores={runner_id=9}] add temp_tag
execute if entity @s[tag=revived_by_10] run tag @a[tag=playing,scores={runner_id=10}] add temp_tag

execute if entity @s[tag=revived_by_11] run tag @a[tag=playing,scores={runner_id=11}] add temp_tag
execute if entity @s[tag=revived_by_12] run tag @a[tag=playing,scores={runner_id=12}] add temp_tag
execute if entity @s[tag=revived_by_13] run tag @a[tag=playing,scores={runner_id=13}] add temp_tag
execute if entity @s[tag=revived_by_14] run tag @a[tag=playing,scores={runner_id=14}] add temp_tag
execute if entity @s[tag=revived_by_15] run tag @a[tag=playing,scores={runner_id=15}] add temp_tag
execute if entity @s[tag=revived_by_16] run tag @a[tag=playing,scores={runner_id=16}] add temp_tag
execute if entity @s[tag=revived_by_17] run tag @a[tag=playing,scores={runner_id=17}] add temp_tag
execute if entity @s[tag=revived_by_18] run tag @a[tag=playing,scores={runner_id=18}] add temp_tag
execute if entity @s[tag=revived_by_19] run tag @a[tag=playing,scores={runner_id=19}] add temp_tag
execute if entity @s[tag=revived_by_20] run tag @a[tag=playing,scores={runner_id=20}] add temp_tag

execute if entity @s[tag=revived_by_21] run tag @a[tag=playing,scores={runner_id=21}] add temp_tag
execute if entity @s[tag=revived_by_22] run tag @a[tag=playing,scores={runner_id=22}] add temp_tag
execute if entity @s[tag=revived_by_23] run tag @a[tag=playing,scores={runner_id=23}] add temp_tag
execute if entity @s[tag=revived_by_24] run tag @a[tag=playing,scores={runner_id=24}] add temp_tag
execute if entity @s[tag=revived_by_25] run tag @a[tag=playing,scores={runner_id=25}] add temp_tag
execute if entity @s[tag=revived_by_26] run tag @a[tag=playing,scores={runner_id=26}] add temp_tag
execute if entity @s[tag=revived_by_27] run tag @a[tag=playing,scores={runner_id=27}] add temp_tag
execute if entity @s[tag=revived_by_28] run tag @a[tag=playing,scores={runner_id=28}] add temp_tag
execute if entity @s[tag=revived_by_29] run tag @a[tag=playing,scores={runner_id=29}] add temp_tag
execute if entity @s[tag=revived_by_30] run tag @a[tag=playing,scores={runner_id=30}] add temp_tag

execute if entity @s[tag=revived_by_31] run tag @a[tag=playing,scores={runner_id=31}] add temp_tag
execute if entity @s[tag=revived_by_32] run tag @a[tag=playing,scores={runner_id=32}] add temp_tag
execute if entity @s[tag=revived_by_33] run tag @a[tag=playing,scores={runner_id=33}] add temp_tag
execute if entity @s[tag=revived_by_34] run tag @a[tag=playing,scores={runner_id=34}] add temp_tag
execute if entity @s[tag=revived_by_35] run tag @a[tag=playing,scores={runner_id=35}] add temp_tag
execute if entity @s[tag=revived_by_36] run tag @a[tag=playing,scores={runner_id=36}] add temp_tag
execute if entity @s[tag=revived_by_37] run tag @a[tag=playing,scores={runner_id=37}] add temp_tag
execute if entity @s[tag=revived_by_38] run tag @a[tag=playing,scores={runner_id=38}] add temp_tag
execute if entity @s[tag=revived_by_39] run tag @a[tag=playing,scores={runner_id=39}] add temp_tag
execute if entity @s[tag=revived_by_40] run tag @a[tag=playing,scores={runner_id=40}] add temp_tag

execute if entity @s[tag=revived_by_41] run tag @a[tag=playing,scores={runner_id=41}] add temp_tag
execute if entity @s[tag=revived_by_42] run tag @a[tag=playing,scores={runner_id=42}] add temp_tag
execute if entity @s[tag=revived_by_43] run tag @a[tag=playing,scores={runner_id=43}] add temp_tag
execute if entity @s[tag=revived_by_44] run tag @a[tag=playing,scores={runner_id=44}] add temp_tag
execute if entity @s[tag=revived_by_45] run tag @a[tag=playing,scores={runner_id=45}] add temp_tag
execute if entity @s[tag=revived_by_46] run tag @a[tag=playing,scores={runner_id=46}] add temp_tag
execute if entity @s[tag=revived_by_47] run tag @a[tag=playing,scores={runner_id=47}] add temp_tag
execute if entity @s[tag=revived_by_48] run tag @a[tag=playing,scores={runner_id=48}] add temp_tag
execute if entity @s[tag=revived_by_49] run tag @a[tag=playing,scores={runner_id=49}] add temp_tag
execute if entity @s[tag=revived_by_50] run tag @a[tag=playing,scores={runner_id=50}] add temp_tag

# tellraws
execute if score $number mode matches 0 if entity @a[tag=playing,team=gladiator] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" has reached the end!","color":"gray"}]

execute if score $number mode matches 1 if entity @a[tag=playing,team=gladiator] unless entity @a[tag=temp_tag] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" has reached the end!","color":"gray"}]
execute if score $number mode matches 1 if entity @a[tag=playing,team=gladiator] if entity @a[tag=temp_tag] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" has reached the end and has awarded points to their medic ","color":"white"},{"selector":"@a[tag=temp_tag]"},{"text":".","color":"gray"}]

scoreboard players add @a[tag=temp_tag] points 2
tag @a[tag=temp_tag] remove temp_tag
