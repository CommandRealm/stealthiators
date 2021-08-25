execute as @a[scores={warp_cooldown=1..},tag=playing] at @s run scoreboard players operation @s display_cooldown = @s warp_cooldown
execute as @a[scores={warp_cooldown=1..},tag=playing] at @s run scoreboard players operation @s display_cooldown /= 20 number
scoreboard players add @a[scores={warp_cooldown=1..},tag=playing] display_cooldown 1
execute as @a[scores={warp_cooldown=1..},tag=playing,team=sneaker] run title @s actionbar [{"text":"[","color":"gold","bold":true},{"score":{"objective":"display_cooldown","name":"@s"},"color":"#b1a370","bold":true},{"text":"]","color":"gold","bold":true}]

scoreboard players remove @a[team=sneaker,tag=playing,scores={r_class=3,warp_cooldown=1..}] warp_cooldown 1


execute as @a[team=sneaker,tag=playing,scores={r_class=3,warp_cooldown=0}] at @s run function game:class/warper/cooldown_over