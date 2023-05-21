scoreboard players reset @s chest_clear
playsound minecraft:ui.button.click master @s ~ ~ ~ 100000 1
execute if entity @s[scores={screen=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:book",tag:{clickable:1}}]}] run tp @s 32 68 -31
execute if entity @s[scores={screen=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:golden_helmet",tag:{clickable:1}}]}] run function chest_menu:start_cosmetics
execute if entity @s[scores={screen=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:command_block",tag:{clickable:1}}]}] run function chest_menu:start_credits
execute if entity @s[scores={screen=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:chiseled_deepslate",tag:{clickable:1}}]}] run function chest_menu:start_tournaments
execute if entity @s[scores={screen=0}] unless entity @s[tag=!has_test,tag=!has_help,tag=!has_bld,tag=!has_srbld,tag=!has_prg,tag=!has_srprg,tag=!has_manager,tag=!has_lead,tag=!has_pc,tag=!has_submitter,tag=!has_cr,tag=!has_art] unless entity @s[nbt={EnderItems:[{id:"minecraft:written_book",tag:{clickable:1}}]}] run function chest_menu:start_titles

execute if entity @s[scores={screen=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function chest_menu:start
execute if entity @s[scores={screen=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:saddle",tag:{clickable:1}}]}] run function chest_menu:start_mounts
execute if entity @s[scores={screen=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:trident",tag:{clickable:1}}]}] run function chest_menu:start_tridents
execute if entity @s[scores={screen=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:bone",tag:{clickable:1}}]}] run function chest_menu:start_death_messages
execute if entity @s[scores={screen=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:gold_nugget",tag:{clickable:1}}]}] run function chest_menu:start_advancement_unlocks
execute if entity @s[scores={screen=2..4}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function chest_menu:start_cosmetics
execute if entity @s[scores={screen=7}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function chest_menu:start_cosmetics
execute if entity @s[scores={screen=5}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function chest_menu:start
execute if entity @s[scores={screen=5}] if entity @s[nbt={EnderItems:[{id:"minecraft:book",tag:{clickable:1}},{id:"minecraft:barrier",tag:{clickable:1}}]}] run function chest_menu:start_credits
execute if entity @s[scores={screen=5}] unless entity @s[nbt={EnderItems:[{id:"minecraft:book",tag:{clickable:1}}]}] run function chest_menu:display_testers
execute if entity @s[scores={screen=2},tag=!unlock_m_12] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:1}}]}] run function chest_menu:start_mounts
execute if entity @s[scores={screen=2},tag=!unlock_m_13] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:2}}]}] run function chest_menu:start_mounts
execute if entity @s[scores={screen=2},tag=!unlock_m_14] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:3}}]}] run function chest_menu:start_mounts
execute if entity @s[scores={screen=2},tag=!unlock_m_15] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:4}}]}] run function chest_menu:start_mounts
execute if entity @s[scores={screen=2},tag=!unlock_m_16] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:5}}]}] run function chest_menu:start_mounts
execute if entity @s[scores={screen=2},tag=!unlock_m_17] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:6}}]}] run function chest_menu:start_mounts

execute if entity @s[scores={screen=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:nether_star",tag:{clickable:1}}]}] run function chest_menu:start_stats
execute if entity @s[scores={screen=6}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function chest_menu:start
execute if entity @s[scores={screen=6}] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_ingot",tag:{clickable:1}}]}] run function chest_menu:start_stats
execute if entity @s[scores={screen=6}] unless entity @s[nbt={EnderItems:[{id:"minecraft:gold_ingot",tag:{clickable:1}}]}] run function chest_menu:start_stats
execute if entity @s[scores={screen=6}] unless entity @s[nbt={EnderItems:[{id:"minecraft:netherite_ingot",tag:{clickable:1}}]}] run function chest_menu:start_stats
execute if entity @s[scores={screen=6}] unless entity @s[nbt={EnderItems:[{id:"minecraft:trident",tag:{clickable:1}}]}] run function chest_menu:start_stats
execute if entity @s[scores={screen=6}] unless entity @s[nbt={EnderItems:[{id:"minecraft:target",tag:{clickable:1}}]}] run function chest_menu:start_stats
execute if entity @s[scores={screen=6}] unless entity @s[nbt={EnderItems:[{id:"minecraft:polished_basalt",tag:{clickable:1}}]}] run function chest_menu:start_stats



execute if entity @s[scores={screen=2}] run scoreboard players set $change compare -1000
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:horse_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 0
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:donkey_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 1
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:cow_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 2
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:mooshroom_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 3
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:slime_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 4
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:chicken_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 5
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:spider_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 6
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:polar_bear_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 7
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:skeleton_horse_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 8
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:bee_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 9
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:parrot_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 10
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:vex_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 11
execute if entity @s[scores={screen=2},tag=unlock_m_12] unless entity @s[nbt={EnderItems:[{id:"minecraft:panda_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 12
execute if entity @s[scores={screen=2},tag=unlock_m_13] unless entity @s[nbt={EnderItems:[{id:"minecraft:hoglin_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 13
execute if entity @s[scores={screen=2},tag=unlock_m_14] unless entity @s[nbt={EnderItems:[{id:"minecraft:sheep_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 14
execute if entity @s[scores={screen=2},tag=unlock_m_15] unless entity @s[nbt={EnderItems:[{id:"minecraft:phantom_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 15
execute if entity @s[scores={screen=2},tag=unlock_m_16] unless entity @s[nbt={EnderItems:[{id:"minecraft:turtle_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 16
execute if entity @s[scores={screen=2},tag=unlock_m_17] unless entity @s[nbt={EnderItems:[{id:"minecraft:ghast_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 17
execute if entity @s[scores={screen=2}] if score $change compare matches 0.. run function chest_menu:change_mount

execute if entity @s[scores={screen=3},tag=!unlock_t_12] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:1}}]}] run function chest_menu:start_tridents
execute if entity @s[scores={screen=3},tag=!unlock_t_13] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:2}}]}] run function chest_menu:start_tridents
execute if entity @s[scores={screen=3},tag=!unlock_t_14] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:3}}]}] run function chest_menu:start_tridents
execute if entity @s[scores={screen=3},tag=!unlock_t_15] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:4}}]}] run function chest_menu:start_tridents
execute if entity @s[scores={screen=3},tag=!unlock_t_16] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:5}}]}] run function chest_menu:start_tridents
execute if entity @s[scores={screen=3},tag=!unlock_t_17] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:6}}]}] run function chest_menu:start_tridents



execute if entity @s[scores={screen=3}] run scoreboard players set $change compare -1000
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:white_stained_glass",tag:{clickable:1}}]}] run scoreboard players set $change compare 0
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:purple_concrete",tag:{clickable:1}}]}] run scoreboard players set $change compare 1
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:blue_concrete",tag:{clickable:1}}]}] run scoreboard players set $change compare 2
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:black_concrete",tag:{clickable:1}}]}] run scoreboard players set $change compare 3
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:red_tulip",tag:{clickable:1}}]}] run scoreboard players set $change compare 4
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:end_rod",tag:{clickable:1}}]}] run scoreboard players set $change compare 5
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:zombie_spawn_egg",tag:{clickable:1}}]}] run scoreboard players set $change compare 6
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:flint_and_steel",tag:{clickable:1}}]}] run scoreboard players set $change compare 7
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:emerald",tag:{clickable:1}}]}] run scoreboard players set $change compare 8
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:white_concrete_powder",tag:{clickable:1}}]}] run scoreboard players set $change compare 9
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:ink_sac",tag:{clickable:1}}]}] run scoreboard players set $change compare 10
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:potato",tag:{clickable:1}}]}] run scoreboard players set $change compare 11
execute if entity @s[scores={screen=3},tag=unlock_t_12] unless entity @s[nbt={EnderItems:[{id:"minecraft:red_concrete",tag:{clickable:1}}]}] run scoreboard players set $change compare 12
execute if entity @s[scores={screen=3},tag=unlock_t_13] unless entity @s[nbt={EnderItems:[{id:"minecraft:cake",tag:{clickable:1}}]}] run scoreboard players set $change compare 13
execute if entity @s[scores={screen=3},tag=unlock_t_14] unless entity @s[nbt={EnderItems:[{id:"minecraft:redstone",tag:{clickable:1}}]}] run scoreboard players set $change compare 14
execute if entity @s[scores={screen=3},tag=unlock_t_15] unless entity @s[nbt={EnderItems:[{id:"minecraft:soul_lantern",tag:{clickable:1}}]}] run scoreboard players set $change compare 15
execute if entity @s[scores={screen=3},tag=unlock_t_16] unless entity @s[nbt={EnderItems:[{id:"minecraft:melon_slice",tag:{clickable:1}}]}] run scoreboard players set $change compare 16
execute if entity @s[scores={screen=3},tag=unlock_t_17] unless entity @s[nbt={EnderItems:[{id:"minecraft:player_head",tag:{clickable:1}}]}] run scoreboard players set $change compare 17


execute if entity @s[scores={screen=3}] if score $change compare matches 0.. run function chest_menu:change_trident_effect

execute if entity @s[scores={screen=4},tag=!unlock_d_12] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:1}}]}] run function chest_menu:start_death_messages
execute if entity @s[scores={screen=4},tag=!unlock_d_13] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:2}}]}] run function chest_menu:start_death_messages
execute if entity @s[scores={screen=4},tag=!unlock_d_14] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:3}}]}] run function chest_menu:start_death_messages
execute if entity @s[scores={screen=4},tag=!unlock_d_15] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:4}}]}] run function chest_menu:start_death_messages
execute if entity @s[scores={screen=4},tag=!unlock_d_16] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:5}}]}] run function chest_menu:start_death_messages
execute if entity @s[scores={screen=4},tag=!unlock_d_17] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:6}}]}] run function chest_menu:start_death_messages

execute if entity @s[scores={screen=4}] run scoreboard players set $change compare -1000
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{Slot:0b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 0
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{Slot:1b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 1
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{Slot:2b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 2
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{Slot:3b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 3
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{Slot:4b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 4
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{Slot:5b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 5
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{Slot:6b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 6
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{Slot:7b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 7
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{Slot:8b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 8
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{Slot:9b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 9
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 10
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{Slot:11b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 11
execute if entity @s[scores={screen=4},tag=unlock_d_12] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 12
execute if entity @s[scores={screen=4},tag=unlock_d_13] unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 13
execute if entity @s[scores={screen=4},tag=unlock_d_14] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 14
execute if entity @s[scores={screen=4},tag=unlock_d_15] unless entity @s[nbt={EnderItems:[{Slot:15b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 15
execute if entity @s[scores={screen=4},tag=unlock_d_16] unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 16
execute if entity @s[scores={screen=4},tag=unlock_d_17] unless entity @s[nbt={EnderItems:[{Slot:17b,id:"minecraft:paper",tag:{clickable:1}}]}] run scoreboard players set $change compare 17

execute if entity @s[scores={screen=4}] if score $change compare matches 0.. run function chest_menu:change_death_message


execute if entity @s[scores={screen=7},advancements={custom/unlock_prefix=false}] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:1}}]}] run function chest_menu:start_advancement_unlocks
execute if entity @s[scores={screen=7},advancements={custom/unlock_lobby_mount=false}] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:2}}]}] run function chest_menu:start_advancement_unlocks
execute if entity @s[scores={screen=7},advancements={custom/unlock_trident_effect=false}] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:3}}]}] run function chest_menu:start_advancement_unlocks
execute if entity @s[scores={screen=7},advancements={custom/unlock_death_message=false}] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_bars",tag:{clickable:1,bar:4}}]}] run function chest_menu:start_advancement_unlocks

execute if entity @s[scores={screen=7},advancements={custom/unlock_prefix=true}] unless entity @s[nbt={EnderItems:[{id:"minecraft:name_tag",tag:{clickable:1}}]}] run function chest_menu:exclusive_prefix
execute if entity @s[scores={screen=7},advancements={custom/unlock_lobby_mount=true}] unless entity @s[nbt={EnderItems:[{id:"minecraft:saddle",tag:{clickable:1}}]}] run function chest_menu:exclusive_lobby_mount
execute if entity @s[scores={screen=7},advancements={custom/unlock_trident_effect=true}] unless entity @s[nbt={EnderItems:[{id:"minecraft:trident",tag:{clickable:1}}]}] run function chest_menu:exclusive_trident_effect
execute if entity @s[scores={screen=7},advancements={custom/unlock_death_message=true}] unless entity @s[nbt={EnderItems:[{id:"minecraft:bone",tag:{clickable:1}}]}] run function chest_menu:exclusive_death_message

execute if entity @s[scores={screen=8}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function chest_menu:start
execute if entity @s[scores={screen=8}] if entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function chest_menu:start_tournaments

execute if entity @s[scores={screen=99}] run function chest_menu:click_titles