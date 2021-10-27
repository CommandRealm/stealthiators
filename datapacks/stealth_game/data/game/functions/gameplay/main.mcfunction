execute if score $time cooldown matches -1 unless entity @a[team=sneaker,tag=playing] unless entity @a[tag=playing,team=won] unless entity @a[tag=waiting] unless entity @a[tag=playing,team=dead] unless entity @a[tag=infected_gladiator,tag=playing] unless entity @a[tag=admin] run function end:insufficient_players
execute as @a[team=sneaker] at @s unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run function game:gameplay/get_boots
execute as @a[team=gladiator] at @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick"}]}] unless data entity @s ActiveEffects[{Id:14b}] run function game:gameplay/get_helmet

execute as @a[team=sneaker,scores={damage_taken=15..}] at @s run function game:gameplay/out
execute if entity @a[scores={r_class=1},tag=playing,team=sneaker] run function game:class/brawler/main
scoreboard players reset @a[tag=playing] damage_taken
scoreboard players reset @a[tag=playing] damage_dealt
execute if score $time cooldown matches -1 unless entity @a[tag=playing,team=sneaker] unless entity @a[team=won] unless entity @a[tag=admin] run function game:gameplay/gladiator_cooldown
execute if score $time time_till_end matches 1.. run function game:gameplay/final_countdown
execute as @a[tag=playing,team=sneaker,gamemode=adventure] at @s if block ~ 150 ~ polished_basalt if block ~ 125 ~ diamond_block run function game:gameplay/step_on_band
execute as @a[tag=playing,team=sneaker,nbt={OnGround:1b}] at @s at @s[y=141,distance=..10] if block ~ 125 ~ emerald_block run function game:gameplay/sneaker_win
execute as @a[tag=playing,team=sneaker] at @s if block ~ 125 ~ emerald_block run effect give @s jump_boost 1 200 true
execute at @e[tag=final_hallway,type=area_effect_cloud] positioned ~-2 ~-1 ~-13 as @a[dx=4,dy=7,dz=0,team=sneaker] at @s run function game:gameplay/leave_back_room
execute as @a[tag=playing,team=gladiator,scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] at @s run function game:gameplay/dash
execute as @a[tag=playing,team=gladiator,scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}}] at @s run function game:gameplay/backdoor
execute if entity @a[scores={dash_cooldown=1..},tag=playing] run function game:gameplay/dash_cooldown
execute as @a[team=gladiator,tag=playing] at @s unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}]}] unless entity @s[scores={dash_cooldown=1..}] run function game:gameplay/get_dash
execute as @a[team=gladiator,tag=playing,scores={dash_cooldown=1..}] at @s unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:1}}]}] run function game:gameplay/get_no_dash_item
execute as @a[team=gladiator,tag=playing,scores={drop_c_o_a_s=1..}] at @s run function game:gameplay/drop_carrot_on_a_stick
execute as @a[team=gladiator,tag=playing,scores={drop_trident=1..}] at @s run function game:gameplay/drop_trident
effect clear @a[x=987,y=151,z=-42,dx=68,dy=8,dz=31,tag=playing,team=sneaker] resistance
execute if entity @a[x=987,y=151,z=-42,dx=68,dy=8,dz=29,tag=playing,team=sneaker] run function game:gameplay/safe_zone
execute as @a[team=gladiator] at @s run playsound minecraft:block.stone.step master @s ~1 ~ ~ 0.00000000000000005 0
execute as @a[team=gladiator] at @s run playsound minecraft:block.stone.step master @s ~-1 ~ ~ 0.00000000000000005 0
execute as @a[team=gladiator] at @s run playsound minecraft:block.stone.step master @s ~ ~ ~-1 0.00000000000000005 0
execute as @a[team=gladiator] at @s run playsound minecraft:block.stone.step master @s ~ ~ ~1 0.00000000000000005 0
execute if score $correct_band band_number matches 1.. as @a[team=gladiator] at @s unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}]}] run function game:gameplay/get_backdoor
execute if score $time cooldown matches 1.. run function game:gameplay/cooldown
execute if entity @a[scores={r_class=2},tag=playing,team=sneaker] run function game:class/alchemist/main
execute if entity @a[scores={r_class=3},tag=playing,team=sneaker] run function game:class/warper/main
execute if entity @a[scores={g_class=2},tag=playing,team=gladiator] run function game:class/locator/main
execute if entity @a[scores={r_class=4},tag=playing,team=sneaker] run function game:class/medic/main
execute if entity @a[scores={r_class=5},tag=playing] run function game:class/puppeteer/main
execute if entity @a[scores={r_class=6},tag=playing,team=sneaker] run function game:class/jumper/main
execute if entity @a[scores={g_class=3},tag=playing,team=gladiator] run function game:class/trapper/main
execute if entity @a[scores={g_class=4},tag=playing,team=gladiator] run function game:class/arbalist/main
execute if entity @a[scores={g_class=5},tag=playing,team=gladiator] run function game:class/specter/main
execute if entity @a[scores={g_class=6},tag=playing,team=gladiator] run function game:class/foreseer/main
scoreboard players remove $time alternate_second 1
execute if score $time game_timer matches 1.. if score $time alternate_second matches ..0 if score $time time_till_end matches -1 run function game:gameplay/update_bossbar
execute if score $time game_timer matches 1.. if score $time alternate_second matches ..0 unless score $time time_till_end matches -1 run function game:gameplay/update_end_bossbar
execute if score $time cooldown matches -1 run scoreboard players remove $time game_timer 1
execute if score $time game_timer matches 0 run function game:gameplay/timer_over
execute if score $number infection matches 1 if score $time cooldown matches -1 if entity @a[team=dead] run function game:gameplay/infection/main
execute if score $number mode matches 1 run function game:gameplay/rotation/main
execute as @a[tag=playing] at @s run clear @s #minecraft:clear_flowers
effect clear @a[tag=playing] wither



scoreboard players remove @a[tag=playing,team=gladiator,scores={adv_backdoor=1..},advancements={custom/kill_after_backdoor=false}] adv_backdoor 1
scoreboard players remove @a[tag=playing,team=sneaker,scores={adv_kill_trap=1..}] adv_kill_trap 1
execute as @a[tag=playing,advancements={custom/live_near_gladiator=false},team=sneaker,scores={adv_near_glad=0}] at @s if entity @a[team=gladiator,distance=..5] run scoreboard players set @s adv_near_glad 300
execute if entity @a[tag=playing,team=sneaker,scores={adv_near_glad=1..},advancements={custom/live_near_gladiator=false}] run function game:advancements/near_glad
advancement grant @a[tag=playing,team=sneaker,advancements={custom/step_on_finish_line=true,custom/step_on_finish_line_late=true,custom/live_near_gladiator=true,custom/step_on_trap=true,custom/step_on_20_bands=true,custom/run_300_blocks=true,custom/unlock_death_message=false}] only minecraft:custom/unlock_death_message

execute if entity @a[gamemode=spectator] run function game:gameplay/spectators
execute as @a[team=sneaker] at @s if block ~ 125 ~ stone run function game:gameplay/rotation/check_band_points
execute if score $time cooldown matches -1 if score $game state matches 1 unless entity @a[team=gladiator,tag=playing] unless entity @a[tag=admin] run function end:insufficient_players

