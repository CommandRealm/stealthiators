execute if entity @e[type=minecraft:snowball,tag=alchemist_snowball] run function game:class/alchemist/snowball
execute as @a[tag=playing,scores={throw_snowball=1..,r_class=2},team=sneaker] at @s run function game:class/alchemist/use_snowball
execute if entity @a[tag=playing,scores={blind_cooldown=1..,alchemist_limit=1..},team=sneaker] run function game:class/alchemist/cooldown
execute as @a[tag=playing,scores={drop_snowball=1..,r_class=2},team=sneaker] at @s run function game:class/alchemist/drop_snowball
return 1