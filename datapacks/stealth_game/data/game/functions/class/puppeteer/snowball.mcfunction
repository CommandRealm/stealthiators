# called when the puppeteer snowball is active.

# particle
execute at @e[type=snowball,tag=puppeteer_snowball] run particle item snowball{CustomModelData:1} ~ ~ ~ 0 0 0 0.1 3 force @a[team=sneaker]

# checking if it hit something
execute at @e[type=snowball,tag=puppeteer_snowball] run kill @e[type=marker,tag=puppeteer_marker,distance=..5,sort=nearest,limit=1] 
execute as @e[type=marker,tag=puppeteer_marker] at @s run function game:class/puppeteer/projectile_hit
kill @e[type=marker,tag=puppeteer_marker] 
execute at @e[type=snowball,tag=puppeteer_snowball] run summon marker ~ ~ ~ {Tags:["die","puppeteer_marker"]}
