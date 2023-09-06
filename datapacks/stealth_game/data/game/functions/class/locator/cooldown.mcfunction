scoreboard players remove @a[scores={locator=1..},tag=playing] locator 1
execute as @a[tag=playing,scores={locator=0}] at @s run function game:class/locator/cooldown_over
kill @e[type=item,nbt={Item:{id:"minecraft:compass"}}]
execute as @a[scores={locator=1..},tag=playing] at @s run scoreboard players operation @s display_cooldown = @s locator
execute as @a[scores={locator=1..},tag=playing] at @s run scoreboard players operation @s display_cooldown /= 20 number
scoreboard players add @a[scores={locator=1..},tag=playing] display_cooldown 1
execute as @a[scores={locator=1..},tag=playing] run title @s actionbar [{"translate":"[","color":"gold","bold":true},{"score":{"objective":"display_cooldown","name":"@s"},"color":"#b1a370","bold":true},{"translate":"]","color":"gold","bold":true}]