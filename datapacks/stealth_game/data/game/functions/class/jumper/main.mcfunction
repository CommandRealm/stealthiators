# main jumper function

# adding jump charge
scoreboard players add @a[team=sneaker,tag=playing,scores={r_class=6},predicate=game:sneak] jump_charge 1

# if charge is done, add level
execute as @a[team=sneaker,tag=playing,scores={r_class=6,jump_charge=10..}] at @s run function game:class/jumper/charge_up_jump

# jump
execute as @a[team=sneaker,tag=playing,scores={r_class=6,jumper_jump=1..}] at @s run function game:class/jumper/jump

# displaying jumper level
execute as @a[team=sneaker,tag=playing,scores={r_class=6}] at @s run title @s actionbar [{"text":"[","color":"gold","bold":true},{"score":{"objective":"jump_level","name":"@s"},"bold":false,"color":"green"},{"text":"]","color":"gold","bold":true}]