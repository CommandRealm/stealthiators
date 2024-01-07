scoreboard players remove @a[tag=playing,scores={dash_cooldown=1..}] dash_cooldown 1
execute as @a[tag=playing,scores={dash_cooldown=0}] at @s run function game:gameplay/dash_cooldown_over
return 1