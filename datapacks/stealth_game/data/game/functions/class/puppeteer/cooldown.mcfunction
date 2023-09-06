scoreboard players remove @a[tag=playing,team=sneaker,scores={puppeteer_cool=1..}] puppeteer_cool 1
execute as @a[tag=playing,team=sneaker,scores={puppeteer_cool=0}] at @s run function game:class/puppeteer/cooldown_over
execute as @a[tag=playing,team=sneaker,scores={puppeteer_cool=1..}] at @s run scoreboard players operation @s display_cooldown = @s puppeteer_cool
execute as @a[tag=playing,team=sneaker,scores={puppeteer_cool=1..}] at @s run scoreboard players operation @s display_cooldown /= 20 number
scoreboard players add @a[tag=playing,team=sneaker,scores={puppeteer_cool=1..}] display_cooldown 1
execute as @a[tag=playing,team=sneaker,scores={puppeteer_cool=1..}] run title @s actionbar [{"translate":"[","color":"gold","bold":true},{"score":{"objective":"display_cooldown","name":"@s"},"color":"#b1a370","bold":true},{"translate":"]","color":"gold","bold":true}]