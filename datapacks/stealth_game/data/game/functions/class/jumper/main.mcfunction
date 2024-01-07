# main jumper function

# adding jump charge
scoreboard players add @a[tag=playing,scores={r_class=6},team=sneaker,predicate=game:sneak] jump_charge 1

# if charge is done, add level
execute as @a[tag=playing,scores={r_class=6,jump_charge=7..},team=sneaker] at @s run function game:class/jumper/charge_up_jump

# jump
execute as @a[tag=playing,scores={r_class=6,jumper_jump=1..},team=sneaker] at @s run function game:class/jumper/jump

# displaying jumper level
execute as @a[tag=playing,scores={r_class=6},team=sneaker] at @s run title @s actionbar [{"text":"[","color":"gold","bold":true},{"score":{"objective":"jump_level","name":"@s"},"bold":false,"color":"green"},{"text":"]","color":"gold","bold":true}]
return 1