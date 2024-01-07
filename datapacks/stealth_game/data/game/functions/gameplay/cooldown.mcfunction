scoreboard players remove $time cooldown 1
execute if score $time cooldown matches 0 run function game:gameplay/cooldown_end
return 1