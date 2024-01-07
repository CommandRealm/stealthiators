execute as @a[tag=playing,scores={warp_cooldown=1..}] at @s run scoreboard players operation @s display_cooldown = @s warp_cooldown
execute as @a[tag=playing,scores={warp_cooldown=1..}] at @s run scoreboard players operation @s display_cooldown /= 20 number
scoreboard players add @a[tag=playing,scores={warp_cooldown=1..}] display_cooldown 1
execute as @a[tag=playing,scores={warp_cooldown=1..},team=sneaker] run title @s actionbar [{"text":"[","color":"gold","bold":true},{"score":{"objective":"display_cooldown","name":"@s"},"color":"#b1a370","bold":true},{"text":"]","color":"gold","bold":true}]

scoreboard players remove @a[tag=playing,scores={r_class=3,warp_cooldown=1..},team=sneaker] warp_cooldown 1


execute as @a[tag=playing,scores={r_class=3,warp_cooldown=0},team=sneaker] at @s run function game:class/warper/cooldown_over
return 1