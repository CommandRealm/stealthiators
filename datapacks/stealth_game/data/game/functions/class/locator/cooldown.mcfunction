scoreboard players remove @a[tag=playing,scores={locator=1..}] locator 1
execute as @a[tag=playing,scores={locator=0}] at @s run function game:class/locator/cooldown_over
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:compass"}}]
execute as @a[tag=playing,scores={locator=1..}] at @s run scoreboard players operation @s display_cooldown = @s locator
execute as @a[tag=playing,scores={locator=1..}] at @s run scoreboard players operation @s display_cooldown /= 20 number
scoreboard players add @a[tag=playing,scores={locator=1..}] display_cooldown 1
execute as @a[tag=playing,scores={locator=1..}] run title @s actionbar [{"text":"[","color":"gold","bold":true},{"score":{"objective":"display_cooldown","name":"@s"},"color":"#b1a370","bold":true},{"text":"]","color":"gold","bold":true}]
return 1