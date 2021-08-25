scoreboard players add 1 tutorial 1
execute if score 1 tutorial matches 1 run function lobby:tutorial/1/summon
execute if score 1 tutorial matches 80.. run scoreboard players reset 1 tutorial
execute if score 1 tutorial matches 10..30 as @e[type=armor_stand,tag=tutorial_1_1] at @s run tp @s ~ ~ ~-0.096
execute if score 1 tutorial matches 10 run function lobby:tutorial/1/start_running
execute if score 1 tutorial matches 40 run function lobby:tutorial/1/jump
execute if score 1 tutorial matches 44 run function lobby:tutorial/1/jump_2
execute as @e[type=armor_stand,tag=tutorial_1_1,tag=get_running] at @s run function lobby:tutorial/get_running
