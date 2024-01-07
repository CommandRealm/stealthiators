# called when the puppeteer snowball is active.

# particle
execute at @e[type=minecraft:snowball,tag=puppeteer_snowball] run particle minecraft:item minecraft:snowball{CustomModelData:1} ~ ~ ~ 0 0 0 0.1 3 force @a[team=sneaker]

# checking if it hit something
execute at @e[type=minecraft:snowball,tag=puppeteer_snowball] run kill @e[type=minecraft:marker,distance=..5,tag=puppeteer_marker,sort=nearest,limit=1]
execute as @e[type=minecraft:marker,tag=puppeteer_marker] at @s run function game:class/puppeteer/projectile_hit
kill @e[type=minecraft:marker,tag=puppeteer_marker]
execute at @e[type=minecraft:snowball,tag=puppeteer_snowball] run summon minecraft:marker ~ ~ ~ {Tags:["die","puppeteer_marker"]}

return 1