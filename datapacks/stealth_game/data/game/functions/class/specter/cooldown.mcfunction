# counting down the countdown


scoreboard players remove @a[tag=playing,team=gladiator,scores={specter_cooldown=1..}] specter_cooldown 1
# displaying the cooldown
execute as @a[scores={specter_cooldown=1..},tag=playing] at @s run scoreboard players operation @s display_cooldown = @s specter_cooldown
execute as @a[scores={specter_cooldown=1..},tag=playing] at @s run scoreboard players operation @s display_cooldown /= 20 number
scoreboard players add @a[scores={specter_cooldown=1..},tag=playing] display_cooldown 1
execute as @a[scores={specter_cooldown=1..},tag=playing] run title @s actionbar [{"text":"[","color":"gold","bold":true},{"score":{"objective":"display_cooldown","name":"@s"},"color":"#b1a370","bold":true},{"text":"]","color":"gold","bold":true}]
# ending
execute as @a[tag=playing,team=gladiator,scores={specter_cooldown=0}] at @s run function game:class/specter/cooldown_over
