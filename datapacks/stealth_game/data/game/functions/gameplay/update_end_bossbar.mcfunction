execute store result bossbar minecraft:time_till_end value run scoreboard players get $time time_till_end
scoreboard players operation $minute bossbar_time = $time time_till_end
scoreboard players operation $minute bossbar_time /= $minute number
scoreboard players operation $calculate bossbar_time = $minute bossbar_time
scoreboard players operation $calculate bossbar_time *= $minute number
scoreboard players operation $second bossbar_time = $time time_till_end
scoreboard players operation $second bossbar_time -= $calculate bossbar_time
scoreboard players operation $second bossbar_time /= 20 number
scoreboard players set $time alternate_second 20
execute if score $second bossbar_time matches 10.. run bossbar set minecraft:time_till_end name [{"text":"Time remaining: ","color":"gold"},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"red"},{"text":":","color":"dark_red"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"red"}]
execute if score $second bossbar_time matches ..9 run bossbar set minecraft:time_till_end name [{"text":"Time remaining: ","color":"gold"},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"red"},{"text":":","color":"dark_red"},{"text":"0","color":"red"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"red"}]
execute if score $time coolown matches -1 if score $minute bossbar_time matches 0 if score $second bossbar_time matches ..10 run function game:gameplay/end_timer_warning
return 1