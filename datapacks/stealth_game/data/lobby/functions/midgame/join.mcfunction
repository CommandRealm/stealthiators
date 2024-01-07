clear @s
scoreboard players reset @s right_click
gamemode spectator @s
team join waiting @s
tellraw @s [{"text":"You are now spectating. You will join after the current round.","color":"#ffced0"}]
tp @s 1021 156 -17 0 10
tp @s @p[tag=playing,team=sneaker]
tp @s @p[tag=playing,team=gladiator]
scoreboard players set @s back_to_lobby 0
execute at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.25 0.65
# tag @s remove been_gladiator
scoreboard players add @s points 0
tag @s add playing
advancement grant @a[tag=playing] only minecraft:custom/play_game
bossbar set minecraft:lobby players @a[tag=!playing]
return 1