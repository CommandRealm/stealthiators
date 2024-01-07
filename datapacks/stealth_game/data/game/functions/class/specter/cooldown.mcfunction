# counting down the countdown


scoreboard players remove @a[tag=playing,scores={specter_cooldown=1..},team=gladiator] specter_cooldown 1
# displaying the cooldown
execute as @a[tag=playing,scores={specter_cooldown=1..}] at @s run scoreboard players operation @s display_cooldown = @s specter_cooldown
execute as @a[tag=playing,scores={specter_cooldown=1..}] at @s run scoreboard players operation @s display_cooldown /= 20 number
scoreboard players add @a[tag=playing,scores={specter_cooldown=1..}] display_cooldown 1
execute as @a[tag=playing,scores={specter_cooldown=1..}] run title @s actionbar [{"text":"[","color":"gold","bold":true},{"score":{"objective":"display_cooldown","name":"@s"},"color":"#b1a370","bold":true},{"text":"]","color":"gold","bold":true}]
# ending
execute as @a[tag=playing,scores={specter_cooldown=0},team=gladiator] at @s run function game:class/specter/cooldown_over

return 1