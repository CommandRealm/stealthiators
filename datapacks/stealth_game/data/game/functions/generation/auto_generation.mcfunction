execute if score $players number matches 1 run scoreboard players set $segments generation 5
execute if score $players number matches 2 run scoreboard players set $segments generation 5

execute if score $players number matches 3 run scoreboard players set $segments generation 6

execute if score $players number matches 4 run scoreboard players set $segments generation 7
execute if score $players number matches 5..6 run scoreboard players set $segments generation 8
execute if score $players number matches 7..8 run scoreboard players set $segments generation 9
execute if score $players number matches 9..11 run scoreboard players set $segments generation 10


execute if score $players number matches 1..2 run scoreboard players set $long generation 2
execute if score $players number matches 3..4 run scoreboard players set $long generation 3
execute if score $players number matches 5..6 run scoreboard players set $long generation 4
execute if score $players number matches 7..9 run scoreboard players set $long generation 5
execute if score $players number matches 10 run scoreboard players set $long generation 4
execute if score $players number matches 11 run scoreboard players set $long generation 5


execute if score $players number matches 1..3 run scoreboard players set $med generation 2
execute if score $players number matches 4..8 run scoreboard players set $med generation 3
execute if score $players number matches 9..11 run scoreboard players set $med generation 4

execute if score $players number matches 1..9 run scoreboard players set $small generation 1
execute if score $players number matches 10 run scoreboard players set $small generation 2
execute if score $players number matches 11 run scoreboard players set $small generation 1


