scoreboard players remove @a[scores={dash_cooldown=1..},tag=playing] dash_cooldown 1
execute as @a[scores={dash_cooldown=0},tag=playing] at @s run function game:gameplay/dash_cooldown_over