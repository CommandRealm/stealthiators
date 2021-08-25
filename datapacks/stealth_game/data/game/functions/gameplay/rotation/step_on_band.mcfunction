scoreboard players add @s points 1
scoreboard players add @s stat_bands 1
execute at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.25 1
execute if entity @s[scores={runner_id=1}] run tag @e[type=area_effect_cloud,tag=mark_band,sort=nearest,limit=1] add gave_runner_1_points
execute if entity @s[scores={runner_id=2}] run tag @e[type=area_effect_cloud,tag=mark_band,sort=nearest,limit=1] add gave_runner_2_points
execute if entity @s[scores={runner_id=3}] run tag @e[type=area_effect_cloud,tag=mark_band,sort=nearest,limit=1] add gave_runner_3_points
execute if entity @s[scores={runner_id=4}] run tag @e[type=area_effect_cloud,tag=mark_band,sort=nearest,limit=1] add gave_runner_4_points
execute if entity @s[scores={runner_id=5}] run tag @e[type=area_effect_cloud,tag=mark_band,sort=nearest,limit=1] add gave_runner_5_points
execute if entity @s[scores={runner_id=6}] run tag @e[type=area_effect_cloud,tag=mark_band,sort=nearest,limit=1] add gave_runner_6_points
execute if entity @s[scores={runner_id=7}] run tag @e[type=area_effect_cloud,tag=mark_band,sort=nearest,limit=1] add gave_runner_7_points
execute if entity @s[scores={runner_id=8}] run tag @e[type=area_effect_cloud,tag=mark_band,sort=nearest,limit=1] add gave_runner_8_points
execute if entity @s[scores={runner_id=9}] run tag @e[type=area_effect_cloud,tag=mark_band,sort=nearest,limit=1] add gave_runner_9_points
execute if entity @s[scores={runner_id=10}] run tag @e[type=area_effect_cloud,tag=mark_band,sort=nearest,limit=1] add gave_runner_10_points
advancement grant @s[scores={stat_bands=20..}] only minecraft:custom/step_on_20_bands