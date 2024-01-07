# called to generate ids
scoreboard players add $id runner_id 1
scoreboard players operation @s runner_id = $id runner_id
return 1