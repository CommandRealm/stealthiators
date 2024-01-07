scoreboard players add @a[team=dead] infect_timer 1
execute as @a[scores={infect_timer=300},team=dead] at @s run function game:gameplay/infection/spawn
effect give @a[scores={infect_timer=1..280},team=dead] minecraft:blindness 2 255 true
execute as @a[x=1000,y=180,z=0,distance=1..,scores={infect_timer=1..299},team=dead] at @s run tp @s 1000 180 0
title @a[scores={infect_timer=1..280},team=dead] title {"text":" "}
title @a[scores={infect_timer=1..280},team=dead] subtitle {"text":"You will be back in the game soon.","color":"gold"}
title @a[scores={infect_timer=1..280},team=dead] actionbar {"text":"Waiting to be revived or turned into a gladiator . . .","color":"#9b8a3d"}
return 1