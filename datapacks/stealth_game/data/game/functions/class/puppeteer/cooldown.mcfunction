scoreboard players remove @a[tag=playing,scores={puppeteer_cool=1..},team=sneaker] puppeteer_cool 1
execute as @a[tag=playing,scores={puppeteer_cool=0},team=sneaker] at @s run function game:class/puppeteer/cooldown_over
execute as @a[tag=playing,scores={puppeteer_cool=1..},team=sneaker] at @s run scoreboard players operation @s display_cooldown = @s puppeteer_cool
execute as @a[tag=playing,scores={puppeteer_cool=1..},team=sneaker] at @s run scoreboard players operation @s display_cooldown /= 20 number
scoreboard players add @a[tag=playing,scores={puppeteer_cool=1..},team=sneaker] display_cooldown 1
execute as @a[tag=playing,scores={puppeteer_cool=1..},team=sneaker] run title @s actionbar [{"text":"[","color":"gold","bold":true},{"score":{"objective":"display_cooldown","name":"@s"},"color":"#b1a370","bold":true},{"text":"]","color":"gold","bold":true}]
return 1