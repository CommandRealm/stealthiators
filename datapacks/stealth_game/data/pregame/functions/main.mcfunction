scoreboard players reset $number players_on
execute as @a run scoreboard players add $number players_on 1
execute as @a[gamemode=adventure,tag=!playing] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2},Slot:4b}]}] run function pregame:get_ready_book
execute as @a[gamemode=adventure,tag=!playing,scores={ready=0}] unless entity @s[x=0,y=66,z=0,distance=..300,nbt={SelectedItem:{id:"minecraft:written_book"}}] run title @s[x=57,y=73,z=7,distance=17..] actionbar [{"text":"You will spectate. ","color":"gray"},{"text":"(","color":"dark_gray","bold":true},{"score":{"objective":"players_ready","name":"$number"},"color":"gray","bold":false},{"text":"/","color":"gray"},{"score":{"objective":"players_on","name":"$number"},"color":"gray"},{"text":")","color":"dark_gray","bold":true}]
execute as @a[gamemode=adventure,tag=!playing,scores={ready=1}] unless entity @s[x=0,y=66,z=0,distance=..300,nbt={SelectedItem:{id:"minecraft:written_book"}}] run title @s[x=57,y=73,z=7,distance=17..] actionbar [{"text":"You will play. ","color":"dark_gray"},{"text":"(","color":"dark_gray","bold":true},{"score":{"objective":"players_ready","name":"$number"},"color":"gray","bold":false},{"text":"/","color":"gray"},{"score":{"objective":"players_on","name":"$number"},"color":"gray"},{"text":")","color":"dark_gray","bold":true}]
execute as @a[tag=!playing,scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] at @s run function pregame:right_click

scoreboard players set $number players_ready 0
execute as @a[scores={ready=1..}] run scoreboard players add $number players_ready 1
execute if entity @a[tag=admin] run scoreboard players add $number players_ready 1
execute if score $number players_ready matches ..1 run function pregame:timer_end
# execute if score $number players_ready matches 1 run function pregame:waiting_for_player
# execute if score $time startup_timer matches -1 if score $number players_ready matches 2.. run function pregame:start_timer
execute if score $time startup_timer matches 1.. run function pregame:countdown

##@a[x=57,y=73,z=7,distance=17..,gamemode=adventure,scores={ready=0},tag=!playing]

execute if score $button pregame matches 1.. run scoreboard players remove $button pregame 1
execute if score $button pregame matches 0 run function pregame:replace_button

# press button
execute if block 35 70 -40 minecraft:stone_button[powered=true] run function pregame:press_button
return 1