scoreboard players set $mod random 6
function random:random
scoreboard players add $rand random 1
scoreboard players operation @s r_class = $rand random