execute as @a[tag=!playing,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]}] run function pregame:get_ready_book
execute as @a[tag=!playing,gamemode=adventure,scores={ready=0}] unless entity @s[x=0,y=66,z=0,distance=..300,nbt={SelectedItem:{id:"minecraft:written_book"}}] run title @s[x=57,y=73,z=7,distance=17..] actionbar [{"text":"You will spectate.","color":"gray"}]
execute as @a[tag=!playing,gamemode=adventure,scores={ready=1}] unless entity @s[x=0,y=66,z=0,distance=..300,nbt={SelectedItem:{id:"minecraft:written_book"}}] run title @s[x=57,y=73,z=7,distance=17..] actionbar [{"text":"You will play.","color":"dark_gray"}]
execute as @a[tag=!playing,scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] at @s run function pregame:right_click

scoreboard players set $number players_ready 0
execute as @a[scores={ready=1..}] run scoreboard players add $number players_ready 1
execute if entity @a[tag=admin] run scoreboard players add $number players_ready 1
execute if score $number players_ready matches ..1 run function pregame:timer_end
execute if score $number players_ready matches 1 run function pregame:waiting_for_player
execute if score $time startup_timer matches -1 if score $number players_ready matches 2.. run function pregame:start_timer
execute if score $time startup_timer matches 1.. run function pregame:countdown

##@a[x=57,y=73,z=7,distance=17..,gamemode=adventure,scores={ready=0},tag=!playing]