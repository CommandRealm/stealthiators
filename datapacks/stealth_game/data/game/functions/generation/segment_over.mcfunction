tp @s ~ ~ ~30
tp @a[tag=playing] 1020 214 135 0 90
execute at @s run summon minecraft:area_effect_cloud ~ 125 ~-1 {Duration:100000,Tags:["mark_band"]}
execute at @s if score $segments_left generation matches 0 run clone 987 147 -19 1055 147 -15 ~ 150 ~-5
execute at @s if score $segments_left generation matches 0 run fill ~ 125 ~-1 ~68 125 ~-5 minecraft:emerald_block
execute at @s if score $segments_left generation matches 0 run fill ~ 151 ~-1 ~68 151 ~-5 minecraft:structure_void replace minecraft:air
execute at @s if score $segments_left generation matches 1.. run fill ~ 125 ~-1 ~68 125 ~-5 minecraft:diamond_block

scoreboard players add $sign band_number 1
execute unless entity @s[z=282,dz=100] if score $sign band_number matches 1 run clone 1161 171 -14 1171 181 -12 1016 172 ~26
execute if score $sign band_number matches 2 run clone 1149 171 -14 1159 181 -12 1016 172 ~26
execute if score $sign band_number matches 3 run clone 1147 171 -14 1137 181 -12 1016 172 ~26
execute if score $sign band_number matches 4 run clone 1161 159 -14 1171 169 -12 1016 172 ~26
execute if score $sign band_number matches 5 run clone 1149 159 -14 1159 169 -12 1016 172 ~26
execute if score $sign band_number matches 6 run clone 1147 159 -14 1137 169 -12 1016 172 ~26
execute if score $sign band_number matches 7 run clone 1161 147 -14 1171 157 -12 1016 172 ~26
execute if score $sign band_number matches 8 run clone 1149 147 -14 1159 157 -12 1016 172 ~26
execute if score $sign band_number matches 9 run clone 1147 147 -14 1137 157 -12 1016 172 ~26
execute if score $segments_left generation matches 0 run clone 1149 183 -14 1159 193 -12 1016 172 ~26

execute at @s positioned ~ 137 ~-5 run clone 987 133 -45 1055 145 -44 ~ ~ ~
execute at @s positioned ~ 137 ~-2 run clone 987 133 -44 1055 145 -43 ~ ~ ~
execute if score $segments_left generation matches 0 run function game:generation/setup_cage
execute if score $segments_left generation matches 0 run scoreboard players set $time game 400
return 1