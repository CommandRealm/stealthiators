tag @a[team=spectator] add playing
execute as @a[tag=potential_cosmetic] at @s run function cosmetic:potential_unlock
tp @a[tag=playing] 42 69 -40 75 -30
clear @a minecraft:carrot_on_a_stick{CustomModelData:2}
scoreboard players set @a[tag=playing] ready 1
scoreboard players set @a[team=spectator] ready 0
scoreboard players reset @a[tag=playing] lobby_trident
title @a[tag=playing] times 0 20 5
tag @a remove going_to_be_gladiator
gamemode adventure @a[tag=playing]
scoreboard players reset @a[tag=playing] right_click
clear @a[tag=playing]
effect clear @a[tag=playing]
bossbar remove minecraft:time_till_end
bossbar remove minecraft:game_timer
execute as @a[tag=playing] at @s run function general:rank
tag @a[tag=playing] remove playing
scoreboard players set $game state 0
forceload remove all
scoreboard objectives remove select_class
scoreboard objectives add select_class trigger
scoreboard players enable @a select_class
bossbar set lobby players @a[tag=!playing]
scoreboard objectives remove back_to_lobby
advancement grant @a[advancements={advancements:custom/play_game=true,advancements:custom/win_as_runner=true,advancements:custom/win_as_gladiator=true,advancements:custom/win_on_classic=true,advancements:custom/win_on_rotation=true,advancements:custom/unlock_lobby_mount=false}] only advancements:custom/unlock_lobby_mount
tag @a remove potential_cosmetic
tag @a remove potential_unlock
scoreboard objectives setdisplay sidebar

scoreboard players set $button pregame 5


data modify entity @e[type=minecraft:area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"text":"- ","color":"gray"},{"text":"🗡","color":"#9c9558","bold":true},{"text":" Start ","color":"gold"},{"text":"🗡","color":"#9c9558","bold":true},{"text":" -","color":"gray"}]'
data modify entity @e[type=minecraft:area_effect_cloud,tag=start_button_text,limit=1] CustomNameVisible set value 1b
return 1