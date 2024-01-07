scoreboard players add @a[gamemode=adventure,x=57,y=73,z=7,distance=..17] time_near_target 1
execute as @a[x=57,y=73,z=7,distance=..17,scores={time_near_target=1}] at @s run function lobby:minigame/get_trident
execute as @a[tag=!playing,scores={drop_trident=1..}] at @s run function lobby:minigame/drop_trident
execute if score $time lobby_minigame matches 0 if entity @a[scores={time_near_target=20..}] run function lobby:minigame/start
execute if score $time lobby_minigame matches 1.. run function lobby:minigame/active_minigame

return 1