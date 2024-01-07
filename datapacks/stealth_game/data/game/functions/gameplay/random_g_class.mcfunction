scoreboard players set $mod random 6
function random:random
scoreboard players add $rand random 1
scoreboard players operation @s g_class = $rand random

return 1