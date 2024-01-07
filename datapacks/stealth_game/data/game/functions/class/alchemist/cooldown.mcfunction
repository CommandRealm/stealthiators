scoreboard players remove @a[tag=playing,scores={blind_cooldown=1..,alchemist_limit=1..},team=sneaker] blind_cooldown 1
execute as @a[tag=playing,scores={blind_cooldown=0},team=sneaker] at @s run function game:class/alchemist/cooldown_over
execute as @a[tag=playing,scores={blind_cooldown=1..},team=sneaker] at @s run scoreboard players operation @s display_cooldown = @s blind_cooldown
execute as @a[tag=playing,scores={blind_cooldown=1..},team=sneaker] at @s run scoreboard players operation @s display_cooldown /= 20 number
scoreboard players add @a[tag=playing,scores={blind_cooldown=1..},team=sneaker] display_cooldown 1
execute as @a[tag=playing,scores={blind_cooldown=1..,alchemist_limit=1..},team=sneaker] run title @s actionbar [{"text":"[","color":"gold","bold":true},{"score":{"objective":"display_cooldown","name":"@s"},"color":"#b1a370","bold":true},{"text":"]","color":"gold","bold":true}]
return 1