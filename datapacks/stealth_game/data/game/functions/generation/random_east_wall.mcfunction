scoreboard players set $mod random 10
function random:random
execute if score $rand random matches 0 run clone 962 111 -18 965 148 -14 ~ ~ ~
execute if score $rand random matches 1 run clone 962 111 -13 965 148 -9 ~ ~ ~
execute if score $rand random matches 2 run clone 962 111 -8 965 148 -4 ~ ~ ~
execute if score $rand random matches 3 run clone 962 111 -3 965 148 1 ~ ~ ~
execute if score $rand random matches 4 run clone 962 111 2 965 148 6 ~ ~ ~
execute if score $rand random matches 5 run clone 962 111 7 965 148 11 ~ ~ ~
execute if score $rand random matches 6 run clone 962 111 12 965 148 16 ~ ~ ~
execute if score $rand random matches 7 run clone 962 111 17 965 148 21 ~ ~ ~
execute if score $rand random matches 8 run clone 962 111 22 965 148 26 ~ ~ ~
execute if score $rand random matches 9 run clone 962 111 27 965 148 31 ~ ~ ~
return 1