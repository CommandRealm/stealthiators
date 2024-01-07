execute if entity @a[scores={intro=0..}] run function lobby:intro/main
execute as @a[gamemode=adventure,tag=!playing] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{preference_item:1},Slot:2b}]}] run function lobby:get_preference_item
execute as @a[gamemode=adventure,tag=!playing,scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{preference_item:1}}}] at @s run function lobby:toggle_preference
execute as @a[gamemode=adventure,tag=!playing,tag=!prefer_gladiator] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_boots",Slot:100b}]}] run function lobby:get_boots
execute as @a[gamemode=adventure,tag=!playing,tag=prefer_gladiator] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4},Slot:103b}]}] run function lobby:get_helmet
execute as @e[type=minecraft:chicken,tag=boom_doom_chicken] at @s run tp @s ~ ~ ~ ~45 ~
execute as @e[tag=market_villager] at @s run tp @s ~ ~ ~ facing entity @p
function lobby:villagers/main
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..300] at @s unless entity @s[nbt={Inventory:[{tag:{ClassBook:1},Slot:6b}]}] run function lobby:get_class_book
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..300,tag=!has_mob] at @s unless entity @s[nbt={Inventory:[{tag:{mob_spawn:1}}]}] run function lobby:check_summon_mob
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..300,tag=!has_mob] at @s unless entity @s[nbt={Inventory:[{tag:{mob_spawn:1},Slot:17b}]}] run function lobby:get_mob_spawn
execute as @a[x=0,y=66,z=0,distance=..300] at @s unless entity @s[scores={select_class=0}] run function lobby:class_selection/tree
execute if entity @a[x=0,y=66,z=0,distance=..300,nbt={SelectedItem:{id:"minecraft:written_book"}}] run function lobby:class_selection/show_class
execute if entity @a[x=181,y=79,z=-104,distance=..50] run function lobby:tutorial/main

particle minecraft:witch 32 68.75 -31 0.15 1 0.15 0.00 2
execute as @e[type=minecraft:area_effect_cloud,tag=spin,limit=1] at @s positioned as @e[type=minecraft:area_effect_cloud,tag=tutorial_tp_particles] run particle minecraft:firework ^ ^ ^0.5 0 0 0 0.0 1
execute as @e[type=minecraft:area_effect_cloud,tag=tutorial_tp,scores={tutorial_tp=0}] at @s at @s[y=67.5,distance=..1] run scoreboard players set @s tutorial_tp 1
execute as @e[type=minecraft:area_effect_cloud,tag=tutorial_tp,scores={tutorial_tp=1}] at @s at @s[y=71.5,distance=..1] run scoreboard players set @s tutorial_tp 0
execute as @e[type=minecraft:area_effect_cloud,tag=tutorial_tp,scores={tutorial_tp=0}] at @s run tp @s ~ ~-0.05 ~
execute as @e[type=minecraft:area_effect_cloud,tag=tutorial_tp,scores={tutorial_tp=1}] at @s run tp @s ~ ~0.025 ~
execute as @a[x=32,y=68,z=-31,dx=0] at @s run function lobby:tp_to_tutorial
scoreboard players add $time tp_nameplate 1
function lobby:nameplate/tree
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..300,nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] at @s unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:horse",Tags:["not_mount"]}}}] run function lobby:check_riding_mob
execute if entity @e[type=minecraft:horse,tag=!not_mount] run function lobby:tp_mounts
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:saddle"}}]
execute if entity @a[tag=has_mob] run function lobby:check_distance_to_mob
execute as @e[type=minecraft:horse,tag=!not_mount] at @s unless entity @s[nbt={SaddleItem:{id:"minecraft:saddle"}}] run function lobby:no_saddle
execute as @e[tag=no_fire] at @s run data merge entity @s {Fire:0s}
kill @e[x=0,y=0,z=0,distance=..5,tag=die_at_0]
execute if entity @e[tag=flying_mount] run function lobby:flying_mount
execute if entity @e[type=minecraft:horse,tag=cloud_mount] run function lobby:cloud_mount
execute if entity @e[type=minecraft:horse,tag=dirt_block] run function lobby:dirt_block
execute if entity @e[tag=rideable_mob] run function lobby:check_rider
execute as @e[tag=rideable_mob] at @s run function lobby:check_for_horse
execute if entity @a[gamemode=adventure,x=57,y=73,z=7,distance=..17] run function lobby:minigame/main
execute as @a[gamemode=adventure,x=57,y=73,z=7,distance=17..,tag=!playing,nbt={Inventory:[{id:"minecraft:trident",tag:{tc_trident:1}}]}] at @s run function lobby:minigame/lose_trident
scoreboard players reset @a[gamemode=adventure,x=57,y=73,z=7,distance=17..,tag=!playing,scores={time_near_target=1..}] time_near_target
execute as @e[type=minecraft:area_effect_cloud,tag=minigame_target] at @s if block ~ ~1 ~ minecraft:spruce_trapdoor[open=true] run function lobby:minigame/fix_trapdoors
execute as @e[type=minecraft:area_effect_cloud,tag=minigame_target] at @s if block ~ ~-1 ~ minecraft:spruce_trapdoor[open=true] run function lobby:minigame/fix_trapdoors
execute unless entity @a[gamemode=adventure,x=57,y=73,z=7,distance=..17] run scoreboard players set $time lobby_minigame 0
effect give @a[gamemode=adventure,x=0,y=66,z=0,distance=..300] minecraft:weakness 2 255 true
effect give @a[gamemode=adventure,x=0,y=66,z=0,distance=..300] minecraft:resistance 2 255 true
execute as @a[x=0,y=73,z=0,distance=..300] at @s if block ~ 0 ~ minecraft:emerald_block run function lobby:leave_area
execute as @a[x=0,y=73,z=0,distance=..300] at @s if block ~ ~ ~ minecraft:dirt_path if block ~ ~2 ~ minecraft:barrier run function lobby:leave_area
execute as @e[type=minecraft:armor_stand,tag=model] at @s run tp @s ~ ~ ~ ~3 ~
execute if entity @a[x=61,y=69,z=-25,distance=..20] run function credits:main
execute as @a[scores={open_echest=1..}] at @s run function chest_menu:open_echest
execute as @a[x=0,y=66,z=0,distance=..10000] at @s store result score @s chest_clear run clear @s #minecraft:chest_menu{clickable:1}
execute as @a[scores={chest_clear=1..}] at @s run function chest_menu:click
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{clickable:1}}}] as @a[x=0,y=66,z=0,distance=..500] at @s run function chest_menu:reset_screen
execute as @a[x=0,y=66,z=0,distance=..500,nbt={EnderItems:[{tag:{clickable:0}}]}] at @s run function chest_menu:reset_screen
setblock 18 68 -50 minecraft:turtle_egg[eggs=4]
execute if score $game state matches 1 run function lobby:midgame/main
advancement grant @a[gamemode=adventure,x=37,y=71,z=-34,dx=9,dy=5,dz=6,advancements={custom/melon_market=false},nbt={OnGround:1b}] only minecraft:custom/melon_market
advancement grant @a[gamemode=adventure,x=74,y=73,z=-40,dx=10,dy=20,dz=10,advancements={custom/find_cr=false},nbt={OnGround:1b}] only minecraft:custom/find_cr
advancement grant @a[x=0,y=66,z=0,distance=..500,advancements={custom/complete_tutorial=true,custom/hundred_points=true,custom/melon_market=true,custom/hit_bullseye=true,custom/find_cr=true,custom/check_out_socials=true,custom/talk_to_villagers=true,custom/unlock_prefix=false}] only minecraft:custom/unlock_prefix
execute if entity @a[tag=!playing,advancements={completionist/completionist=true}] run function completionist:completionist_helix

scoreboard players reset @s drop_ready_book
particle minecraft:firework 32 74 -31 0 0 0 0.05 1
particle minecraft:firework 35 70.0 -34 0 0 0 0.05 1

return 1