scoreboard players add @a[team=dead] infect_timer 1
execute as @a[team=dead,scores={infect_timer=300}] at @s run function game:gameplay/infection/spawn
effect give @a[team=dead,scores={infect_timer=1..280}] blindness 2 255 true
execute as @a[team=dead,scores={infect_timer=1..299},x=1000,y=180,z=0,distance=1..] at @s run tp @s 1000 180 0
title @a[team=dead,scores={infect_timer=1..280}] title {"translate":" "}
title @a[team=dead,scores={infect_timer=1..280}] subtitle {"translate":"You will be back in the game soon.","color":"gold"}
title @a[team=dead,scores={infect_timer=1..280}] actionbar {"translate":"Waiting to be revived or turned into a gladiator . . .","color":"#9b8a3d"}