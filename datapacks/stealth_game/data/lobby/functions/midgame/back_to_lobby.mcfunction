scoreboard players reset @s back_to_lobby
tp @s 42 69 -40 75 -30
gamemode adventure
function general:rank
tellraw @s {"translate":"You are no longer spectating.","color":"gray"}
execute at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.25 0.65