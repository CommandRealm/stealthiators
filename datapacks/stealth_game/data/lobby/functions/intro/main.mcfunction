scoreboard players add @a[scores={intro=0..}] intro 1
item replace entity @a[scores={intro=50}] armor.head with air
playsound minecraft:entity.wither.spawn master @a[scores={intro=80}] ~ ~ ~ 100000 0
execute as @a[scores={intro=65}] at @s run playsound minecraft:custom.intro master @s ~ ~ ~ 100000 1
execute as @a[scores={intro=60}] at @s run playsound minecraft:custom.breath master @s ~ ~ ~ 1000000 0
execute as @a[scores={intro=100}] at @s run playsound minecraft:custom.intro master @s ~ ~ ~ 100000 1
execute as @a[scores={intro=135}] at @s run playsound minecraft:custom.intro master @s ~ ~ ~ 100000 1
execute as @a[scores={intro=100}] at @s run playsound minecraft:custom.breath master @s ~ ~ ~ 1000000 0
execute as @a[scores={intro=130}] at @s run playsound minecraft:custom.breath master @s ~ ~ ~ 1000000 0.75
title @a[scores={intro=80}] title {"text":"Stealthiators","color":"dark_gray","bold":true}
title @a[scores={intro=80}] subtitle [{"text":"By the ","color":"white","bold":false},{"text":"Command","color":"aqua","bold":true},{"text":" Realm","color":"dark_aqua","bold":true},{"text":" Team","color":"white","bold":false}]
scoreboard players set @a[scores={intro=80}] ready 1
execute as @a[scores={intro=135}] at @s run function lobby:intro/end
