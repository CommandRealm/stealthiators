scoreboard players remove @a[tag=playing,team=sneaker,scores={blind_cooldown=1..,alchemist_limit=1..}] blind_cooldown 1
execute as @a[tag=playing,team=sneaker,scores={blind_cooldown=0}] at @s run function game:class/alchemist/cooldown_over
execute as @a[tag=playing,team=sneaker,scores={blind_cooldown=1..}] at @s run scoreboard players operation @s display_cooldown = @s blind_cooldown
execute as @a[tag=playing,team=sneaker,scores={blind_cooldown=1..}] at @s run scoreboard players operation @s display_cooldown /= 20 number
scoreboard players add @a[tag=playing,team=sneaker,scores={blind_cooldown=1..}] display_cooldown 1
execute as @a[tag=playing,team=sneaker,scores={blind_cooldown=1..,alchemist_limit=1..}] run title @s actionbar [{"text":"[","color":"gold","bold":true},{"score":{"objective":"display_cooldown","name":"@s"},"color":"#b1a370","bold":true},{"text":"]","color":"gold","bold":true}]