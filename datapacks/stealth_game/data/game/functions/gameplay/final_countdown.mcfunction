scoreboard players remove $time time_till_end 1
execute store result bossbar minecraft:time_till_end value run scoreboard players get $time time_till_end
execute if score $time time_till_end matches 0 run function game:gameplay/check_winner
execute unless entity @a[team=sneaker] if score $time time_till_end matches 2.. run scoreboard players set $time time_till_end 1
return 1