clear @s
scoreboard players reset @s right_click
gamemode spectator @s
team join spectator @s
scoreboard players enable @s back_to_lobby
tellraw @s [{"translate":"You are now a spectator! Click "},{"translate":"here","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/trigger back_to_lobby set 1"}},{"translate":" to return to the lobby.","bold":false,"color":"white"}]
tp @s 1021 156 -17 0 10
tp @s @p[tag=playing,team=sneaker]
tp @s @p[tag=playing,team=gladiator]
scoreboard players set @s back_to_lobby 0
execute at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.25 0.65