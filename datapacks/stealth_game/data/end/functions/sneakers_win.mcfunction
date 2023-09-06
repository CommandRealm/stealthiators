scoreboard players set $winners calculate 0
# team join won @a[team=dead]
execute as @a[team=won] at @s run scoreboard players add $winners calculate 1
team join gold @a[team=won]
execute if score $winners calculate matches 2.. run tellraw @a [{"translate":"Runners win!\n","color":"dark_gray"},{"translate":"The winners were: ","color":"gray"},{"selector":"@a[team=gold]"}]
execute if score $winners calculate matches ..1 run tellraw @a [{"translate":"Runners win!\n","color":"dark_gray"},{"translate":"The winner was: ","color":"gray"},{"selector":"@a[team=gold]"}]
advancement grant @a[team=gold,tag=playing] only minecraft:custom/win_on_classic
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 2
tag @a[tag=playing] add potential_cosmetic
function end:players