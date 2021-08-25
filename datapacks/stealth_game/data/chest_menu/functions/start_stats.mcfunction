scoreboard players set @s screen 6
function chest_menu:clear

loot replace entity @s enderchest.10 loot minecraft:stats/wins
loot replace entity @s enderchest.11 loot minecraft:stats/r_wins
loot replace entity @s enderchest.12 loot minecraft:stats/g_wins
loot replace entity @s enderchest.14 loot minecraft:stats/bands
loot replace entity @s enderchest.15 loot minecraft:stats/punches
loot replace entity @s enderchest.16 loot minecraft:stats/highscore

replaceitem entity @s enderchest.18 barrier{HideFlags:63,display:{Name:'[{"text":"Back","color":"red","italic":false,"bold":true}]'},clickable:1}