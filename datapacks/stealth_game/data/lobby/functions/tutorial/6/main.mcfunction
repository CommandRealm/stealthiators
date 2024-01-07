scoreboard players add 6 tutorial 1
execute if score 6 tutorial matches 1 run function lobby:tutorial/6/summon
execute as @e[type=minecraft:armor_stand,tag=tutorial_6_1,tag=get_running] at @s run function lobby:tutorial/get_running
execute if score 6 tutorial matches 120.. run scoreboard players reset 6 tutorial
execute if score 6 tutorial matches 10..40 as @e[type=minecraft:armor_stand,tag=tutorial_6_1] at @s run tp @s ~0.096 ~ ~
execute if score 6 tutorial matches 10 run function lobby:tutorial/6/start_running
execute if score 6 tutorial matches 37 as @e[type=minecraft:armor_stand,tag=tutorial_6_1] at @s run function lobby:tutorial/6/finish_line
return 1