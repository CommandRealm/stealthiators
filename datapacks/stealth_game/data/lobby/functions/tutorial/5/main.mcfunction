scoreboard players add 5 tutorial 1
execute if score 5 tutorial matches 1 run function lobby:tutorial/5/summon
execute if score 5 tutorial matches 120.. run scoreboard players set 5 tutorial 0
execute if score 5 tutorial matches 60 run function lobby:tutorial/5/particles
execute if score 5 tutorial matches 75 run function lobby:tutorial/5/teleport
execute if entity @e[type=minecraft:armor_stand,tag=tutorial_5_2,scores={tutorial=0}] run function lobby:tutorial/5/direction_0
execute if entity @e[type=minecraft:armor_stand,tag=tutorial_5_2,scores={tutorial=1}] run function lobby:tutorial/5/direction_1
execute as @e[type=minecraft:armor_stand,tag=tutorial_5_1] at @s run data modify entity @s Pose.Head[1] set from entity @e[type=minecraft:armor_stand,tag=tutorial_5_2,limit=1] Pose.Head[1]
return 1