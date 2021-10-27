##Called when someone presses the start button.

##Resetting the button and trapdor

setblock 35 70 -40 air destroy
setblock 34 69 -40 minecraft:iron_trapdoor[facing=south,half=top,open=false,powered=false,waterlogged=false]
setblock 34 70 -39 minecraft:iron_trapdoor[facing=south,half=top,open=true,powered=false,waterlogged=false]
setblock 34 71 -40 minecraft:iron_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=false]
setblock 34 70 -41 minecraft:iron_trapdoor[facing=north,half=top,open=true,powered=false,waterlogged=false]

execute if score $time startup_timer matches 0.. run tag @p add temporary_tag
execute if score $time startup_timer matches 0.. run function pregame:timer_end
execute if score $number players_ready matches 2.. unless score $time startup_timer matches 0.. unless entity @a[tag=temporary_tag] run function pregame:start_timer
execute if score $number players_ready matches ..1 run function pregame:not_enough_players

tag @a remove temporary_tag

##Setting up button delay
scoreboard players set $button pregame 10