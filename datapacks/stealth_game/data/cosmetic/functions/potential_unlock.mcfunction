scoreboard players set $mod random 2
function random:random
execute if score $rand random matches 0 run function cosmetic:unlock
tag @s remove potential_unlock
return 1