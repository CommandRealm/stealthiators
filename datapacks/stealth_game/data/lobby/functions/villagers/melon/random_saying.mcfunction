execute if entity @s[tag=said_2] run function lobby:villagers/melon/saying_3
execute if entity @s[tag=said_1,tag=!said_2] run function lobby:villagers/melon/saying_2
execute if entity @s[tag=!said_1] run function lobby:villagers/melon/saying_1
scoreboard players set $mod random 5
function random:random
execute if score $rand random matches 0 run tag @s remove said_greeting
execute if entity @s[tag=said_3] run tag @s remove said_1
execute if entity @s[tag=said_3] run tag @s remove said_2
execute if entity @s[tag=said_3] run tag @s remove said_3
return 1