execute if score $time game matches 400..599 run function game:animation/lock_position
execute if score $time game matches 500 run function game:animation/5
execute if score $time game matches 520 run function game:animation/4
execute if score $time game matches 540 run function game:animation/3
execute if score $time game matches 560 run function game:animation/2
execute if score $time game matches 580 run function game:animation/1
execute if score $time game matches 600 run function game:animation/go
execute if score $time game matches 601.. run function game:animation/opening_gate
execute if score $time game matches 601.. run function game:animation/phantom
return 1