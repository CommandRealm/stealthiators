
scoreboard players reset @a[scores={ready=0}] playing
scoreboard players add @a[scores={ready=1}] playing 0

scoreboard players remove $time startup_timer 1
scoreboard players remove $time sound_second 1
execute if score $time sound_second matches 0 run function pregame:play_sound
scoreboard players operation $time display_timer = $time startup_timer
scoreboard players operation $time display_timer /= 20 number
scoreboard players add $time display_timer 1
execute if score $number players_ready matches 2.. run title @a title [{"score":{"objective":"display_timer","name":"$time"},"color":"dark_gray"},{"translate":" seconds","color":"#777777"}]
execute if score $number players_ready matches 2.. if score $time display_timer matches 1 run title @a title [{"score":{"objective":"display_timer","name":"$time"},"color":"dark_gray"},{"translate":" second","color":"#777777"}]
execute if score $number players_ready matches 2.. run title @a[scores={ready=0}] subtitle [{"translate":"to join the game","color":"#3e0003"}]
execute if score $number players_ready matches 2.. run title @a[scores={ready=1}] subtitle [{"translate":"till the game begins ","color":"gray"},{"translate":"(","color":"dark_gray","bold":true},{"score":{"objective":"players_ready","name":"$number"},"color":"gray","bold":false},{"translate":"/","color":"gray"},{"score":{"objective":"players_on","name":"$number"},"color":"gray"},{"translate":")","color":"dark_gray","bold":true}]
execute if score $time startup_timer matches 0 run function game:start
execute as @a[scores={intro=0..}] at @s run function lobby:intro/end