# main puppeteer function

execute if entity @e[type=minecraft:snowball,tag=puppeteer_snowball] run function game:class/puppeteer/snowball
execute unless entity @e[type=minecraft:snowball,tag=puppeteer_snowball] if entity @e[type=minecraft:marker,tag=puppeteer_marker] run function game:class/puppeteer/snowball
execute as @a[tag=playing,scores={throw_snowball=1..,r_class=5},team=sneaker] at @s run function game:class/puppeteer/use_snowball
execute if entity @a[tag=playing,scores={puppeteer_cool=1..},team=sneaker] run function game:class/puppeteer/cooldown
execute as @a[tag=playing,scores={drop_snowball=1..,r_class=5},team=sneaker] at @s run function game:class/puppeteer/drop_snowball

# storing rotation for stray
execute as @e[type=minecraft:stray,tag=fake_boots] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s save_rot

# if punched, give effects
execute as @a[tag=playing,team=gladiator,advancements={game:hit_fake_boots=true}] at @s run function game:class/puppeteer/gladiator_damage
return 1