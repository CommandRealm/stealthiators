# cooldown
scoreboard players remove @a[team=gladiator,tag=playing,scores={g_class=6,foreseer_cool=1..}] foreseer_cool 1

# displaying the cooldown
execute as @a[scores={foreseer_cool=1..},tag=playing] at @s run scoreboard players operation @s display_cooldown = @s foreseer_cool
execute as @a[scores={foreseer_cool=1..},tag=playing] at @s run scoreboard players operation @s display_cooldown /= 20 number
scoreboard players add @a[scores={foreseer_cool=1..},tag=playing] display_cooldown 1
execute as @a[scores={foreseer_cool=1..},tag=playing] run title @s actionbar [{"translate":"[","color":"gold","bold":true},{"score":{"objective":"display_cooldown","name":"@s"},"color":"#b1a370","bold":true},{"translate":"]","color":"gold","bold":true}]

# cooldown
execute as @a[tag=playing,team=gladiator,scores={foreseer_cool=0}] at @s run function game:class/foreseer/cooldown_over