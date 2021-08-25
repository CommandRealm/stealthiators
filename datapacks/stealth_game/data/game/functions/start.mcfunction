scoreboard players set $time startup_timer -1
tag @a[scores={ready=1..}] add playing
title @a[tag=!playing] title {"text":" "}
title @a[tag=!playing] subtitle {"text":" "}
execute if entity @a[tag=playing,tag=rider_0] as @e[type=horse,tag=rider_0] at @s run function lobby:remove_mob
execute if entity @a[tag=playing,tag=rider_1] as @e[type=horse,tag=rider_1] at @s run function lobby:remove_mob
execute if entity @a[tag=playing,tag=rider_2] as @e[type=horse,tag=rider_2] at @s run function lobby:remove_mob
execute if entity @a[tag=playing,tag=rider_3] as @e[type=horse,tag=rider_3] at @s run function lobby:remove_mob
execute if entity @a[tag=playing,tag=rider_4] as @e[type=horse,tag=rider_4] at @s run function lobby:remove_mob
execute if entity @a[tag=playing,tag=rider_5] as @e[type=horse,tag=rider_5] at @s run function lobby:remove_mob
execute if entity @a[tag=playing,tag=rider_6] as @e[type=horse,tag=rider_6] at @s run function lobby:remove_mob
execute if entity @a[tag=playing,tag=rider_7] as @e[type=horse,tag=rider_7] at @s run function lobby:remove_mob
execute if entity @a[tag=playing,tag=rider_8] as @e[type=horse,tag=rider_8] at @s run function lobby:remove_mob
execute if entity @a[tag=playing,tag=rider_9] as @e[type=horse,tag=rider_9] at @s run function lobby:remove_mob
execute if entity @a[tag=playing,tag=rider_10] as @e[type=horse,tag=rider_10] at @s run function lobby:remove_mob


tag @a[tag=playing] remove has_mob
tag @a[tag=playing] remove rider_0
tag @a[tag=playing] remove rider_1
tag @a[tag=playing] remove rider_2
tag @a[tag=playing] remove rider_3
tag @a[tag=playing] remove rider_4
tag @a[tag=playing] remove rider_5
tag @a[tag=playing] remove rider_6
tag @a[tag=playing] remove rider_7
tag @a[tag=playing] remove rider_8
tag @a[tag=playing] remove rider_9
tag @a[tag=playing] remove rider_10

gamemode spectator @a[tag=playing]
tp @a[tag=playing] 1007 0 132
clear @a[tag=playing]
clear @a carrot_on_a_stick{CustomModelData:2}
effect clear @a[tag=playing]
scoreboard players set $game state 1
scoreboard players set $time game -20
title @a[tag=playing] title [{"text":" "}]
title @a[tag=playing] subtitle {"text":"Generation in progress . . .","color":"red","italic":true}
title @a times 0 500 5
effect give @a[tag=playing] blindness 100 255 true
effect give @a[tag=playing] levitation 100 255 true
replaceitem entity @a[tag=playing] armor.head carved_pumpkin{HideFlags:63,Enchantments:[{id:"binding_curse",lvl:1}],display:{Name:'[{"text":"CR Logo","color":"dark_aqua","bold":false,"italic":false}]'},CustomModelData:1}
scoreboard objectives remove playing
function game:gameplay/start_game
execute if score $number mode matches 1 run function game:gameplay/rotation/start_game
scoreboard players set $round game 1
bossbar set lobby players @a[tag=!playing]
execute if score $number mode matches 1 if score $number infection matches 0 run tellraw @a[tag=playing] [{"text":""},{"text":"Stealthiators","color":"dark_gray","bold":true},{"text":" Rotation Mode","color":"gold","bold":true},{"text":"\nIn this mode, everyone gets a chance to be a gladiator. Your goal is to be the player with the most points. You can earn points by doing the following actions:","color":"#9c9558"},{"text":"\nCrossing a band as a runner | 1 point","color":"gray"},{"text":"\nStepping on the finish line as a runner | 5 points","color":"gray"},{"text":"\nRunners winning the round | 1 point","color":"gray"},{"text":"\nReviving someone as a medic | 2 points","color":"gray"},{"text":"\nKilling someone as a gladiator | 2 points","color":"red"},{"text":"\nGladiators winning the round | 4 points","color":"red"}]
execute if score $number mode matches 1 if score $number infection matches 1 run tellraw @a[tag=playing] [{"text":""},{"text":"Stealthiators","color":"dark_gray","bold":true},{"text":" Rotation Mode","color":"gold","bold":true},{"text":"\nIn this mode, everyone gets a chance to be a gladiator. Your goal is to be the player with the most points. You can earn points by doing the following actions:","color":"#9c9558"},{"text":"\nCrossing a band as a runner | 1 point","color":"gray"},{"text":"\nStepping on the finish line as a runner | 5 points","color":"gray"},{"text":"\nRunners winning the round | 1 point","color":"gray"},{"text":"\nReviving someone as a medic | 2 points","color":"gray"},{"text":"\nKilling someone as a gladiator | 2 points","color":"red"},{"text":"\nGladiators winning the round | 4 points","color":"red"},{"text":"\nWinning the round as an infected gladiator | 1 point","color":"red"}]
scoreboard players set $players number 0
execute as @a[tag=playing] at @s run scoreboard players add $players number 1
execute if score $auto generation matches 0 run function game:generation/custom_generation
execute if score $auto generation matches 1 run function game:generation/auto_generation
scoreboard objectives add back_to_lobby trigger
advancement grant @a[tag=playing] only minecraft:custom/play_game