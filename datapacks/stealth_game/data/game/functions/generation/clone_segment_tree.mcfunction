execute if score $long_left generation matches 0 if score $med_left generation matches 0 if score $small_left generation matches 1.. run function game:generation/clone_small
execute if score $long_left generation matches 0 if score $med_left generation matches 1.. run function game:generation/clone_med
execute if score $long_left generation matches 1.. run function game:generation/clone_long

return 1