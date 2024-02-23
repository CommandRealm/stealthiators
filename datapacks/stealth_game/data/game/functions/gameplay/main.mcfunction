execute if score $time cooldown matches -1 unless entity @a[tag=playing,team=sneaker] unless entity @a[tag=playing,team=won] unless entity @a[tag=waiting] unless entity @a[tag=playing,team=dead] unless entity @a[tag=infected_gladiator,tag=playing] unless entity @a[tag=admin] run function end:insufficient_players
execute as @a[team=sneaker] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_boots",Slot:100b}]}] run function game:gameplay/get_boots
execute as @a[team=gladiator] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b}]}] unless data entity @s active_effects[{id:"minecraft:invisibility"}] run function game:gameplay/get_helmet

execute as @a[scores={damage_taken=15..},team=sneaker] at @s run function game:gameplay/out
execute if entity @a[tag=playing,scores={r_class=1},team=sneaker] run function game:class/brawler/main
scoreboard players reset @a[tag=playing] damage_taken
scoreboard players reset @a[tag=playing] damage_dealt
execute if score $time cooldown matches -1 unless entity @a[tag=playing,team=sneaker] unless entity @a[team=won] unless entity @a[tag=admin] run function game:gameplay/gladiator_cooldown
execute if score $time time_till_end matches 1.. run function game:gameplay/final_countdown
execute as @a[gamemode=adventure,tag=playing,team=sneaker] at @s if block ~ 150 ~ minecraft:polished_basalt if block ~ 125 ~ minecraft:diamond_block run function game:gameplay/step_on_band
execute as @a[tag=playing,team=sneaker,nbt={OnGround:1b}] at @s at @s[y=141,distance=..10] if block ~ 125 ~ minecraft:emerald_block run function game:gameplay/sneaker_win
execute as @a[tag=playing,team=sneaker] at @s if block ~ 125 ~ minecraft:emerald_block run effect give @s minecraft:jump_boost 1 200 true
execute at @e[type=minecraft:area_effect_cloud,tag=final_hallway] positioned ~-2 ~-1 ~-13 as @a[dx=4,dy=7,dz=0,team=sneaker] at @s run function game:gameplay/leave_back_room
execute as @a[tag=playing,scores={right_click=1..},team=gladiator,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] at @s run function game:gameplay/dash
execute as @a[tag=playing,scores={right_click=1..},team=gladiator,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}}] at @s run function game:gameplay/backdoor
execute if entity @a[tag=playing,scores={dash_cooldown=1..}] run function game:gameplay/dash_cooldown
execute as @a[tag=playing,team=gladiator] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1},Slot:1b}]}] unless entity @s[scores={dash_cooldown=1..}] run function game:gameplay/get_dash
execute as @a[tag=playing,scores={dash_cooldown=1..},team=gladiator] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:1},Slot:1b}]}] run function game:gameplay/get_no_dash_item
execute as @a[tag=playing,scores={drop_c_o_a_s=1..},team=gladiator] at @s run function game:gameplay/drop_carrot_on_a_stick
execute as @a[tag=playing,scores={drop_trident=1..},team=gladiator] at @s run function game:gameplay/drop_trident
effect clear @a[x=987,y=151,z=-42,dx=68,dy=8,dz=31,tag=playing,team=sneaker] minecraft:resistance
execute if entity @a[x=987,y=151,z=-42,dx=68,dy=8,dz=29,tag=playing,team=sneaker] run function game:gameplay/safe_zone
execute as @a[team=gladiator] at @s run playsound minecraft:block.stone.step master @s ~1 ~ ~ 0.00000000000000005 0
execute as @a[team=gladiator] at @s run playsound minecraft:block.stone.step master @s ~-1 ~ ~ 0.00000000000000005 0
execute as @a[team=gladiator] at @s run playsound minecraft:block.stone.step master @s ~ ~ ~-1 0.00000000000000005 0
execute as @a[team=gladiator] at @s run playsound minecraft:block.stone.step master @s ~ ~ ~1 0.00000000000000005 0
execute if score $correct_band band_number matches 1.. as @a[team=gladiator] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5},Slot:4b}]}] run function game:gameplay/get_backdoor
execute if score $time cooldown matches 1.. run function game:gameplay/cooldown
execute if entity @a[tag=playing,scores={r_class=2},team=sneaker] run function game:class/alchemist/main
execute if entity @a[tag=playing,scores={r_class=3},team=sneaker] run function game:class/warper/main
execute if entity @a[tag=playing,scores={g_class=2},team=gladiator] run function game:class/locator/main
execute if entity @a[tag=playing,scores={r_class=4},team=sneaker] run function game:class/medic/main
execute if entity @a[tag=playing,scores={r_class=5}] run function game:class/puppeteer/main
execute if entity @a[tag=playing,scores={r_class=6},team=sneaker] run function game:class/jumper/main
execute if entity @a[tag=playing,scores={g_class=3},team=gladiator] run function game:class/trapper/main
execute if entity @a[tag=playing,scores={g_class=4},team=gladiator] run function game:class/arbalist/main
execute if entity @a[tag=playing,scores={g_class=5},team=gladiator] run function game:class/specter/main
execute if entity @a[tag=playing,scores={g_class=6},team=gladiator] run function game:class/foreseer/main
scoreboard players remove $time alternate_second 1
execute if score $time game_timer matches 1.. if score $time alternate_second matches ..0 if score $time time_till_end matches -1 run function game:gameplay/update_bossbar
execute if score $time game_timer matches 1.. if score $time alternate_second matches ..0 unless score $time time_till_end matches -1 run function game:gameplay/update_end_bossbar
execute if score $time cooldown matches -1 run scoreboard players remove $time game_timer 1
execute if score $time game_timer matches 0 run function game:gameplay/timer_over
execute if score $number infection matches 1 if score $time cooldown matches -1 if entity @a[team=dead] run function game:gameplay/infection/main
execute if score $number mode matches 1 run function game:gameplay/rotation/main
execute as @a[tag=playing] at @s run clear @s #minecraft:clear_flowers
effect clear @a[tag=playing] minecraft:wither



scoreboard players remove @a[tag=playing,scores={adv_backdoor=1..},team=gladiator,advancements={advancements:custom/kill_after_backdoor=false}] adv_backdoor 1
scoreboard players remove @a[tag=playing,scores={adv_kill_trap=1..},team=sneaker] adv_kill_trap 1
execute as @a[tag=playing,scores={adv_near_glad=0},advancements={advancements:custom/live_near_gladiator=false},team=sneaker] at @s if entity @a[distance=..5,team=gladiator] run scoreboard players set @s adv_near_glad 300
execute if entity @a[tag=playing,scores={adv_near_glad=1..},team=sneaker,advancements={advancements:custom/live_near_gladiator=false}] run function game:advancements/near_glad
advancement grant @a[tag=playing,team=sneaker,advancements={advancements:custom/step_on_finish_line=true,advancements:custom/step_on_finish_line_late=true,advancements:custom/live_near_gladiator=true,advancements:custom/step_on_trap=true,advancements:custom/step_on_20_bands=true,advancements:custom/run_300_blocks=true,advancements:custom/unlock_death_message=false}] only advancements:custom/unlock_death_message

execute if entity @a[gamemode=spectator] run function game:gameplay/spectators
execute as @a[team=sneaker] at @s if block ~ 125 ~ minecraft:stone run function game:gameplay/rotation/check_band_points
execute if score $time cooldown matches -1 if score $number mode matches 0 if score $game state matches 1 unless entity @a[tag=playing,team=gladiator] unless entity @a[tag=admin] run function end:insufficient_players
execute if score $time cooldown matches -1 if score $number mode matches 1 if score $game state matches 1 unless entity @a[tag=playing,team=gladiator] unless entity @a[tag=admin] as @a[tag=playing,team=sneaker] at @s run function game:gameplay/sneaker_win

return 1