execute unless entity @a[tag=playing,tag=!been_gladiator] run function game:gameplay/rotation/calculate_winner
execute if entity @a[tag=playing,tag=!been_gladiator] run scoreboard players set $time game 399
scoreboard players add $round game 1
execute if entity @a[tag=playing,tag=!been_gladiator] run title @a[tag=playing] title [{"text":"Round ","color":"#b4ae8f","bold":true},{"score":{"objective":"game","name":"$round"},"color":"#d1c48a","bold":true}]
execute if entity @a[tag=playing,tag=!been_gladiator] as @a[tag=playing] at @s run title @s subtitle [{"text":"You have ","color":"gray","bold":false},{"score":{"objective":"points","name":"@s"},"color":"dark_gray","bold":true},{"text":" points.","color":"gray","bold":false}]
execute if entity @a[tag=playing,tag=!been_gladiator] as @a[tag=playing,scores={points=1}] at @s run title @s subtitle [{"text":"You have ","color":"gray","bold":false},{"score":{"objective":"points","name":"@s"},"color":"dark_gray","bold":true},{"text":" point.","color":"gray","bold":false}]
execute if entity @a[tag=playing,tag=!been_gladiator] run function game:generation/setup_cage
clear @a[tag=playing]
effect clear @a[tag=playing]
gamemode adventure @a[tag=playing]
kill @e[type=area_effect_cloud,tag=revive_spot]
kill @e[type=area_effect_cloud,tag=trap]
kill @e[type=area_effect_cloud,tag=trap_tp]
kill @e[type=area_effect_cloud,tag=warp_spot]
bossbar remove game_timer
bossbar remove time_till_end