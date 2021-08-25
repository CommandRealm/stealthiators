scoreboard players set $mod random 8
function random:random
execute if score $rand random matches 0 run clone 167 64 -108 163 68 -112 163 79 -112
execute if score $rand random matches 1 run clone 167 58 -108 163 62 -112 163 79 -112
execute if score $rand random matches 2 run clone 167 52 -108 163 56 -112 163 79 -112
execute if score $rand random matches 3 run clone 167 46 -108 163 50 -112 163 79 -112
execute if score $rand random matches 4 run clone 167 40 -108 163 44 -112 163 79 -112
execute if score $rand random matches 5 run clone 167 34 -108 163 38 -112 163 79 -112
execute if score $rand random matches 6 run clone 167 28 -108 163 32 -112 163 79 -112
execute if score $rand random matches 7 run clone 167 23 -108 163 27 -112 163 79 -112
scoreboard players set 2a tutorial 0