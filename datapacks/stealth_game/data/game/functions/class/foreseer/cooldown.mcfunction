# cooldown
scoreboard players remove @a[tag=playing,scores={g_class=6,foreseer_cool=1..},team=gladiator] foreseer_cool 1

# displaying the cooldown
execute as @a[tag=playing,scores={foreseer_cool=1..}] at @s run scoreboard players operation @s display_cooldown = @s foreseer_cool
execute as @a[tag=playing,scores={foreseer_cool=1..}] at @s run scoreboard players operation @s display_cooldown /= 20 number
scoreboard players add @a[tag=playing,scores={foreseer_cool=1..}] display_cooldown 1
execute as @a[tag=playing,scores={foreseer_cool=1..}] run title @s actionbar [{"text":"[","color":"gold","bold":true},{"score":{"objective":"display_cooldown","name":"@s"},"color":"#b1a370","bold":true},{"text":"]","color":"gold","bold":true}]

# cooldown
execute as @a[tag=playing,scores={foreseer_cool=0},team=gladiator] at @s run function game:class/foreseer/cooldown_over
return 1