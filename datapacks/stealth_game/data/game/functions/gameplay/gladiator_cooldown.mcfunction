scoreboard players set $time cooldown 100
scoreboard players reset $sneaker cooldown
scoreboard players set $gladiator cooldown 1
gamemode spectator @a[tag=playing,team=!gladiator]
team join out @a[team=sneaker]
scoreboard players add @a[tag=!infected_gladiator,team=gladiator] points 4
scoreboard players add @a[tag=infected_gladiator,team=gladiator] points 1
title @a[tag=playing] title [{"text":"Gladiators Win!","color":"red"}]
execute as @a[tag=playing] at @s run playsound minecraft:custom.gladiators_win voice @s ~ ~ ~ 1000000 1
bossbar set minecraft:game_timer players
scoreboard players set $time game_timer 1000000
title @a[tag=playing] subtitle [{"text":" "}]
scoreboard players add @a[tag=playing,team=gladiator] stat_g_win 1
advancement grant @a[tag=playing,scores={stat_g_win=1..}] only minecraft:custom/win_as_gladiator
execute as @a[tag=playing] at @s run scoreboard players operation @s stat_win = @s stat_r_win
execute as @a[tag=playing] at @s run scoreboard players operation @s stat_win += @s stat_g_win

return 1