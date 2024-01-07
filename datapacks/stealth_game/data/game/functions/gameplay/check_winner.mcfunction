scoreboard players set $criteria calculate 0
scoreboard players set $winners calculate 0
execute as @a[team=dead] at @s run scoreboard players add $criteria calculate 1
execute as @a[team=runner] at @s run scoreboard players add $criteria calculate 1
execute as @a[tag=infected_gladiator,team=gladiator] at @s run scoreboard players add $criteria calculate 1
execute as @a[team=won] at @s run scoreboard players add $criteria calculate 1
execute as @a[team=won] at @s run scoreboard players add $winners calculate 1
scoreboard players add $criteria calculate 1
scoreboard players operation $criteria calculate /= 2 number
scoreboard players operation $criteria calculate -= $winners calculate
execute if score $criteria calculate matches ..0 run function game:gameplay/sneaker_cooldown
execute if score $criteria calculate matches 1.. run function game:gameplay/gladiator_cooldown
return 1