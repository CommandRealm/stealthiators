scoreboard players set $mod random 42
function random:random
execute if score $rand random matches 0..20 run function game:tridents/flower/first_half
execute if score $rand random matches 21.. run function game:tridents/flower/second_half