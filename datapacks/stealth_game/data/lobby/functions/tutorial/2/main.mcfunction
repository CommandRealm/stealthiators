scoreboard players add 2 tutorial 1
execute if score 2 tutorial matches 1 run function lobby:tutorial/2/summon
execute as @e[type=armor_stand,tag=tutorial_2_1,tag=get_running] at @s run function lobby:tutorial/get_running
execute if score 2 tutorial matches 120.. run scoreboard players reset 2 tutorial
execute if score 2 tutorial matches 10..40 as @e[type=armor_stand,tag=tutorial_2_1] at @s run tp @s ~0.096 ~ ~
execute if score 2 tutorial matches 10 run function lobby:tutorial/2/start_running
execute if score 2 tutorial matches 44 run function lobby:tutorial/2/stop_running
execute if score 2 tutorial matches 25 run playsound minecraft:block.note_block.chime master @a 168 80 -108 0.05 0
execute if score 2 tutorial matches 25 positioned 168 80 -108 run playsound minecraft:block.note_block.chime master @a[distance=..5] 168 80 -108 0.25 0