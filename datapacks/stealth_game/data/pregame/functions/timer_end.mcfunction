scoreboard players set $time startup_timer -1
scoreboard objectives remove playing
data modify entity @e[type=minecraft:area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"text":"- ","color":"gray"},{"text":"🗡","color":"#9c9558","bold":true},{"text":" Start ","color":"gold"},{"text":"🗡","color":"#9c9558","bold":true},{"text":" -","color":"gray"}]'

return 1