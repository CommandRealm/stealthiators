# main puppeteer function

execute if entity @e[type=snowball,tag=puppeteer_snowball] run function game:class/puppeteer/snowball
execute unless entity @e[type=snowball,tag=puppeteer_snowball] if entity @e[type=marker,tag=puppeteer_marker] run function game:class/puppeteer/snowball
execute as @a[tag=playing,team=sneaker,scores={throw_snowball=1..,r_class=5}] at @s run function game:class/puppeteer/use_snowball
execute if entity @a[tag=playing,team=sneaker,scores={puppeteer_cool=1..}] run function game:class/puppeteer/cooldown
execute as @a[tag=playing,team=sneaker,scores={drop_snowball=1..,r_class=5}] at @s run function game:class/puppeteer/drop_snowball

# storing rotation for stray
execute as @e[type=stray,tag=fake_boots] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s save_rot

# if punched, give effects
execute as @a[team=gladiator,tag=playing,advancements={game:hit_fake_boots=true}] at @s run function game:class/puppeteer/gladiator_damage