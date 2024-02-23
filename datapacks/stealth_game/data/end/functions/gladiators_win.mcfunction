tag @a remove winner
tag @a[team=gladiator] add winner
tag @a[team=won] add winner
scoreboard players set $winners calculate 0
execute as @a[tag=winner] at @s run scoreboard players add $winners calculate 1
team join gold @a[team=won]
team join red @a[team=gladiator]
execute if score $winners calculate matches 2.. run tellraw @a [{"text":"Gladiators win!","color":"red"},{"text":"\nThe winners were: ","color":"#ba666a"},{"selector":"@a[tag=winner]"}]
execute if score $winners calculate matches ..1 run tellraw @a [{"text":"Gladiators win!","color":"red"},{"text":"\nThe winner was: ","color":"#ba666a"},{"selector":"@a[tag=winner]"}]
advancement grant @a[tag=winner,tag=playing] only advancements:custom/win_on_classic
tag @a remove winner
execute as @a at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1000000 0.75
tag @a[tag=playing] add potential_cosmetic
function end:players
return 1