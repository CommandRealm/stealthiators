execute if entity @a[x=157,y=79,z=-107,distance=..10] run function lobby:tutorial/1/main
execute unless entity @a[x=157,y=79,z=-107,distance=..10] if entity @e[type=armor_stand,tag=tutorial_1_1,tag=running] run function lobby:tutorial/1/player_leave
execute if entity @a[x=163,y=79,z=-107,distance=..10] run function lobby:tutorial/2a/main
execute if entity @a[x=171,y=79,z=-107,distance=..10] run function lobby:tutorial/2/main
execute unless entity @a[x=171,y=79,z=-107,distance=..10] if entity @e[type=armor_stand,tag=tutorial_2_1,tag=running] run function lobby:tutorial/2/player_leave
execute if entity @a[x=178,y=79,z=-107,distance=..10] run function lobby:tutorial/3/main
execute if entity @a[x=183,y=79,z=-107,distance=..10] run function lobby:tutorial/4/main
execute if entity @a[x=188,y=79,z=-107,distance=..10] run function lobby:tutorial/5/main
execute if entity @a[x=193,y=79,z=-107,distance=..10] run function lobby:tutorial/6/main
execute unless entity @a[x=193,y=79,z=-107,distance=..10] if entity @e[type=armor_stand,tag=tutorial_6_1,tag=running] run function lobby:tutorial/6/player_leave
execute if entity @e[tag=running,type=armor_stand,scores={tutorial=0}] run function lobby:tutorial/direction_0
execute if entity @e[tag=running,type=armor_stand,scores={tutorial=1}] run function lobby:tutorial/direction_1



particle witch 203 81.75 -105 0.15 1 0.15 0.00 2
execute as @e[tag=tutorial_tp_2,type=area_effect_cloud,scores={tutorial_tp=0}] at @s at @s[y=80.5,distance=..1] run scoreboard players set @s tutorial_tp 1
execute as @e[tag=tutorial_tp_2,type=area_effect_cloud,scores={tutorial_tp=1}] at @s at @s[y=84.5,distance=..1] run scoreboard players set @s tutorial_tp 0
execute as @e[tag=tutorial_tp_2,type=area_effect_cloud,scores={tutorial_tp=0}] at @s run tp @s ~ ~-0.05 ~
execute as @e[tag=tutorial_tp_2,type=area_effect_cloud,scores={tutorial_tp=1}] at @s run tp @s ~ ~0.025 ~
execute as @a[x=203,y=81,z=-105,dx=0] at @s run function lobby:tutorial/tp_to_lobby
scoreboard players add $time2 tp_nameplate 1
function lobby:tutorial/nameplate/tree