## Always running function of the game

##removing hunger
effect give @a minecraft:saturation 1000000 255 true

##this system adds everyone by 1 to check when players join and leave.
scoreboard players add @a new_player 1
##next command runs a function when a player has logged off
execute as @a[scores={leave_game=1..}] at @s run function general:leave_game
##next command will run the starting function when a player joins
execute as @a[scores={new_player=1}] at @s run function general:join_game


##runs function if player is in lobby:
execute if entity @a[x=0,y=66,z=0,distance=..300] run function lobby:main

##determining what state the game is in:
execute if score $game state matches 0 run function pregame:main
execute if score $game state matches 1.. run function game:main
execute as @e[type=minecraft:area_effect_cloud,tag=spin] at @s run tp @s ~ ~ ~ ~15 ~

execute as @a[scores={throw_trident=1..}] at @s run function game:tridents/throw_trident
execute if entity @e[type=minecraft:trident,tag=trident_effect] run function game:tridents/trident_effect
advancement grant @a[advancements={advancements:custom/unlock_prefix=true,advancements:custom/unlock_trident_effect=true,advancements:custom/unlock_death_message=true,advancements:custom/unlock_lobby_mount=true,advancements:completionist/completionist=false}] only advancements:completionist/completionist
return 1