scoreboard players set $time startup_timer 100
scoreboard players set $time sound_second 20
title @a times 0 20 5
execute as @a[scores={ready=1}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.5 0
execute as @a[scores={ready=1}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 0.25 0.6
scoreboard objectives add playing dummy {"translate":"- Playing -","color":"gray"}
scoreboard objectives setdisplay sidebar playing

data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"translate":"- ","color":"gray"},{"translate":"🗡","color":"#9c9558","bold":true},{"translate":" Cancel ","color":"red"},{"translate":"🗡","color":"#9c9558","bold":true},{"translate":" -","color":"gray"}]'