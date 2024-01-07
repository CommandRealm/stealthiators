execute if entity @e[type=minecraft:armor_stand,tag=tutorial_4_2,scores={tutorial=0}] run function lobby:tutorial/4/direction_0
execute if entity @e[type=minecraft:armor_stand,tag=tutorial_4_2,scores={tutorial=1}] run function lobby:tutorial/4/direction_1
execute if score 4 tutorial matches 7 run function lobby:tutorial/4/move_trident_down
execute if score 4 tutorial matches 10 run function lobby:tutorial/4/trident_hit_player
scoreboard players add 4 tutorial 1
return 1