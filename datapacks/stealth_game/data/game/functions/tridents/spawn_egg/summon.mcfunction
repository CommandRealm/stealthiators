scoreboard players set $mod random 30
function random:random
execute if score $rand random matches 0..14 run function game:tridents/spawn_egg/first_half
execute if score $rand random matches 15..29 run function game:tridents/spawn_egg/second_half