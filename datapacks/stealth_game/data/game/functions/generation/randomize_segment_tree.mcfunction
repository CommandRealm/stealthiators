fill ~ 151 ~ ~68 171 ~15 minecraft:air
fill ~ 151 ~16 ~68 171 ~30 minecraft:air

execute if score $long_left generation matches 0 if score $med_left generation matches 0 if score $small_left generation matches 1.. run function game:generation/randomize_small_segment
execute if score $long_left generation matches 0 if score $med_left generation matches 1.. run function game:generation/randomize_med_segment
execute if score $long_left generation matches 1.. run function game:generation/randomize_long_segment
return 1