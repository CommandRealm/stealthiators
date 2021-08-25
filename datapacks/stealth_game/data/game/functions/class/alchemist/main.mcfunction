execute if entity @e[type=snowball] run function game:class/alchemist/snowball
execute as @a[tag=playing,team=sneaker,scores={throw_snowball=1..}] at @s run function game:class/alchemist/use_snowball
execute if entity @a[tag=playing,team=sneaker,scores={blind_cooldown=1..}] run function game:class/alchemist/cooldown
execute as @a[tag=playing,team=sneaker,scores={drop_snowball=1..,r_class=2}] at @s run function game:class/alchemist/drop_snowball