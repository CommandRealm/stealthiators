scoreboard players set $time startup_timer -1
scoreboard objectives remove playing
data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"translate":"- ","color":"gray"},{"translate":"🗡","color":"#9c9558","bold":true},{"translate":" Start ","color":"gold"},{"translate":"🗡","color":"#9c9558","bold":true},{"translate":" -","color":"gray"}]'
