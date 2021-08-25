scoreboard players set $time cooldown 100
bossbar remove minecraft:time_till_end
scoreboard players set $sneaker cooldown 1
scoreboard players reset $gladiator cooldown
gamemode spectator @a[tag=playing]
scoreboard players add @a[team=won] points 1
scoreboard players add @a[team=dead] points 1
title @a[tag=playing] title [{"text":"Runners Win!","color":"gray"}]
execute as @a[tag=playing] at @s run playsound minecraft:custom.runners_win voice @s ~ ~ ~ 1000000 1
bossbar set minecraft:game_timer players
title @a[tag=playing] subtitle [{"text":" "}]
scoreboard players add @a[team=won,tag=playing] stat_r_win 1
scoreboard players add @a[team=dead,tag=playing] stat_r_win 1
advancement grant @a[tag=playing,scores={stat_r_win=1..}] only minecraft:custom/win_as_runner
execute as @a[tag=playing] at @s run scoreboard players operation @s stat_win = @s stat_r_win
execute as @a[tag=playing] at @s run scoreboard players operation @s stat_win += @s stat_g_win