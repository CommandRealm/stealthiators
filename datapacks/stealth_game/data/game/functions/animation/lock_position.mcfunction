execute positioned 1021 153 -35 run tp @a[team=sneaker,distance=0.05..] 1021 152 -35
execute positioned 1021 162 75 run tp @a[team=gladiator,distance=0.05..] 1021 162 75
scoreboard players remove $time side_animation 1
execute if score $time side_animation matches 2 run scoreboard objectives modify points displayname [{"text":"|","color":"red"},{"text":" • ","color":"yellow","bold":false},{"text":"POINTS","color":"gold","bold":true},{"text":" • ","color":"yellow","bold":false},{"text":"|","color":"red"}]
execute if score $time side_animation matches 4 run scoreboard objectives modify points displayname [{"text":"/","color":"red"},{"text":" • ","color":"yellow","bold":false},{"text":"POINTS","color":"gold","bold":true},{"text":" • ","color":"yellow","bold":false},{"text":"\\","color":"red"}]
execute if score $time side_animation matches 6 run scoreboard objectives modify points displayname [{"text":"-","color":"red","bold":true},{"text":" • ","color":"yellow","bold":false},{"text":"POINTS","color":"gold","bold":true},{"text":" • ","color":"yellow","bold":false},{"text":"-","color":"red","bold":true}]
execute if score $time side_animation matches 0 run function game:gameplay/rotation/update_points_sidebar

execute as @a[team=sneaker] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}]}] run function game:class/pregame/get_brawler
execute as @a[team=sneaker] at @s unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}]}] run function game:class/pregame/get_alchemist
execute as @a[team=sneaker] at @s unless entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}]}] run function game:class/pregame/get_warper
execute as @a[team=sneaker] at @s unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:12}}]}] run function game:class/pregame/get_medic

execute as @a[team=gladiator] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:13}}]}] run function game:class/pregame/get_athlete
execute as @a[team=gladiator] at @s unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:17}}]}] run function game:class/pregame/get_locator
execute as @a[team=gladiator] at @s unless entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:14}}]}] run function game:class/pregame/get_trapper
execute as @a[team=gladiator] at @s unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:15}}]}] run function game:class/pregame/get_arbalist
execute as @a[tag=playing,scores={right_click=1..}] at @s run function game:class/pregame/change_class