gamerule doDaylightCycle false
gamerule keepInventory true
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule fallDamage false
gamerule doTileDrops false
team add lobby
team add test
team add help
team add bld
team add prg
team add srbld
team add srprg
team add lead
team add manager
team add art
team modify lobby color gray
team modify test color gray
team modify help color gray
team modify bld color gray
team modify prg color gray
team modify srbld color gray
team modify srprg color gray
team modify lead color gray
team modify lobby color gray
team modify manager color gray
team modify art color gray
team modify test prefix {"translate":"(Tester) ","color":"gray"}
team modify help prefix {"translate":"[Helper] ","color":"dark_gray"}
team modify bld prefix {"translate":"{Builder} ","color":"blue"}
team modify prg prefix {"translate":"{Programmer} ","color":"red"}
team modify srbld prefix {"translate":"{Sr. Builder} ","color":"dark_blue"}
team modify srprg prefix {"translate":"{Sr. Programmer} ","color":"dark_red"}
team modify lead prefix [{"translate":"{","color":"dark_purple","bold":true},{"translate":"Project Lead","bold":false},{"translate":"} ","bold":true}]
team modify manager prefix {"translate":"{Manager} ","color":"yellow"}
team modify art prefix {"translate":"{Artist} ","color":"green"}

team add submitter
team modify submitter color gray
team modify submitter prefix [{"translate":"(","color":"gold","bold":true},{"translate":"Submitter","bold":false,"color":"gray"},{"translate":") ","bold":true}]

team add melon
team modify melon color gray
team modify melon prefix [{"translate":"(","color":"red","bold":false},{"translate":"Melon","bold":true,"color":"green"},{"translate":") ","bold":false,"color":"red"}]

team add pc_role
team modify pc_role color gray
team modify pc_role prefix [{"translate":"(","color":"dark_gray","bold":false},{"translate":"pc","bold":true,"color":"green"},{"translate":") ","bold":false,"color":"dark_gray"}]

team add prefix
team modify prefix color gray
team modify prefix prefix [{"translate":"[","color":"dark_gray","bold":true},{"translate":"Sneaky Sneaker","color":"gray","bold":false},{"translate":"] ","color":"dark_gray","bold":true}]

team add tournament
team modify tournament color gray
team modify tournament prefix [{"translate":"(","color":"dark_gray","bold":true},{"translate":"Tournament","color":"gray","bold":false},{"translate":") ","color":"dark_gray","bold":true}]

scoreboard objectives add new_player dummy
scoreboard objectives add leave_game minecraft.custom:minecraft.leave_game
scoreboard objectives add intro dummy
scoreboard objectives add state dummy
scoreboard players add $game state 0
scoreboard objectives add ready dummy
scoreboard objectives add right_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add players_ready dummy
scoreboard objectives add sound_second dummy
scoreboard objectives add number dummy
scoreboard players set 20 number 20
scoreboard objectives add display_timer dummy
scoreboard objectives add players_on dummy
scoreboard objectives add startup_timer dummy
scoreboard players add $time startup_timer 0
execute if score $time startup_timer matches 0 run scoreboard players set $time startup_timer -1
scoreboard objectives add game dummy
scoreboard objectives add generation dummy
scoreboard objectives add settings dummy
scoreboard objectives add random dummy

team add gladiator
team add sneaker
team modify gladiator color gold
team modify sneaker color dark_gray
team modify gladiator prefix [{"translate":"[","color":"dark_gray","bold":true},{"translate":"Gladiator","bold":false,"color":"red"},{"translate":"] ","color":"dark_gray","bold":true}]
team modify sneaker prefix [{"translate":"[","color":"dark_gray","bold":true},{"translate":"Runner","bold":false,"color":"#8a8a8a"},{"translate":"] ","color":"dark_gray","bold":true}]
team modify sneaker collisionRule never
team modify gladiator collisionRule never
team add cr
team modify cr color gray
team modify cr prefix [{"translate":"{","color":"white","bold":true},{"translate":"C","color":"aqua","bold":true},{"translate":"R","color":"dark_aqua","bold":true},{"translate":"} ","color":"white","bold":true}]

team add dead
team modify dead color red
team modify dead prefix [{"translate":"(","color":"dark_red","bold":true},{"translate":"Out","bold":false,"color":"red"},{"translate":") ","color":"dark_red","bold":true}]
scoreboard objectives add dash_cooldown dummy
scoreboard objectives add door_cooldown dummy
scoreboard objectives add time_till_end dummy
scoreboard players add $set_time time_till_end 0
execute if score $set_time time_till_end matches 0 run scoreboard players set $set_time time_till_end 600
team add won
team modify won prefix [{"translate":"(","bold":true,"color":"#9c9558"},{"translate":"Winner","color":"gold","bold":false},{"translate":") ","bold":true,"color":"#9c9558"}]
team modify won color gold
team add lobby
team modify lobby color gray
team modify sneaker friendlyFire false
team modify gladiator friendlyFire false
gamerule fireDamage false
gamerule drowningDamage false
scoreboard objectives add drop_c_o_a_s minecraft.dropped:minecraft.carrot_on_a_stick
scoreboard objectives add drop_trident minecraft.dropped:minecraft.trident
scoreboard objectives add drop_snowball minecraft.dropped:minecraft.snowball
scoreboard objectives add cooldown dummy
scoreboard objectives add r_class dummy
scoreboard objectives add g_class dummy
scoreboard objectives add sel_r_class dummy
scoreboard objectives add sel_g_class dummy
scoreboard objectives add blind_cooldown dummy
scoreboard objectives add locator dummy
setblock 0 0 0 shulker_box{Lock:" please leave locked, ty"}
scoreboard objectives add display_cooldown dummy
scoreboard objectives add revive_crouch minecraft.custom:minecraft.sneak_time
scoreboard objectives add revive_timer dummy

kill @e[type=area_effect_cloud,tag=spin]
summon area_effect_cloud 0 0 0 {Duration:10000000,Tags:["spin"]}
team add no_collision
team modify no_collision collisionRule never
scoreboard objectives add compare_traps dummy
scoreboard objectives add gladiators dummy
scoreboard players add $number gladiators 0
execute if score $number gladiators matches 0 run scoreboard players set $number gladiators 1
scoreboard objectives add speech_timer dummy
execute at @a[x=0,y=66,z=0,distance=..300] if entity @e[tag=market_villager,type=villager,distance=..6] run function lobby:villagers/main
scoreboard objectives add select_class trigger
scoreboard objectives add warp_cooldown dummy
scoreboard objectives add stun_timer dummy
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
scoreboard objectives add arbalist_arrow dummy
scoreboard objectives add revives dummy
bossbar remove lobby
bossbar add lobby [{"translate":" | ","color":"red","obfuscated":true,"bold":false},{"translate":"Stealthiators","color":"dark_gray","bold":true,"obfuscated":false},{"translate":" - ","color":"gray","bold":false,"obfuscated":false},{"translate":"By the ","color":"white","obfuscated":false,"underlined":false,"extra":[{"translate":"Command","color":"aqua","bold":true,"obfuscated":false,"extra":[{"translate":" Realm","color":"dark_aqua","extra":[{"translate":" Team","bold":false,"color":"white"}]}]}]},{"translate":" | ","color":"red","obfuscated":true,"bold":false}]
bossbar set lobby color yellow
bossbar set lobby players @a[tag=!playing]
bossbar set lobby max 1
bossbar set lobby value 1
scoreboard players set 2 number 2
scoreboard objectives add calculate dummy
scoreboard objectives add set_timer dummy
scoreboard players add $time set_timer 0
execute if score $time set_timer matches 0 run scoreboard players set $time set_timer 6000
scoreboard objectives add game_timer dummy
scoreboard objectives add alternate_second dummy
scoreboard objectives add bossbar_time dummy
scoreboard players set $second number 20
scoreboard players set $minute number 1200
team add dark_gray
team add red
team add gold
team modify dark_gray color dark_gray
team modify red color red
team modify gold color gold
scoreboard objectives add drop_trap minecraft.dropped:minecraft.snow
scoreboard objectives add heartbeat dummy
scoreboard objectives add infection dummy
scoreboard players add $number infection 0
scoreboard objectives add mode dummy
scoreboard players add $number mode 0
scoreboard objectives add side_animation dummy

team modify sneaker displayName {"translate":"Runners","color":"gray"}
team modify gladiator displayName {"translate":"Gladiators","color":"red"}
team modify dead displayName {"translate":"Out","color":"red"}
scoreboard objectives add death_msg dummy
kill @e[type=area_effect_cloud,tag=tutorial_text]
summon area_effect_cloud 157 81 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"Every "},{"translate":"runner\'s","color":"gray"},{"translate":" goal is to reach the","color":"white"}]'}
summon area_effect_cloud 157 80.75 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"end of the map without getting caught."}]'}

summon area_effect_cloud 157 80.25 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"Only the "},{"translate":"runner\'s","color":"gray"},{"translate":" feet are visible,","color":"white"}]'}
summon area_effect_cloud 157 80.0 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"meaning you can hide behind single blocks."}]'}

summon area_effect_cloud 163.75 81 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"The map randomly generates at the start of each game."}]'}
summon area_effect_cloud 163.75 80.75 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"The width of each area becomes"}]'}
summon area_effect_cloud 163.75 80.5 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"progressively smaller near the finish line."}]'}

summon area_effect_cloud 171.0 81.0 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"There are basalt bands between each segment."}]'}
summon area_effect_cloud 171.0 80.75 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"Crossing a new band will notify the "},{"translate":"gladiators.","color":"red"}]'}

summon area_effect_cloud 178.0 81.0 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"The "},{"translate":"gladiator\'s","color":"red"},{"translate":" goal is to stop the runners","color":"white"}]'}
summon area_effect_cloud 178.0 80.75 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"from reaching the finish line."}]'}
summon area_effect_cloud 183.5 81.0 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"Gladiators","color":"red"},{"translate":" can eliminate ","color":"white"},{"translate":"runners","color":"gray"}]'}
summon area_effect_cloud 183.5 80.75 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"in a single hit by throwing their trident","color":"white"}]'}
summon area_effect_cloud 183.5 80.5 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"or punching them.","color":"white"}]'}

summon area_effect_cloud 188.75 81.0 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"Gladiators","color":"red"},{"translate":" have a dash item","color":"white"}]'}
summon area_effect_cloud 188.75 80.75 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"as well as a \\"backdoor\\" item","color":"white"}]'}
summon area_effect_cloud 188.75 80.5 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"that will warp them","color":"white"}]'}
summon area_effect_cloud 188.75 80.25 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"two bands back from"}]'}
summon area_effect_cloud 188.75 80.0 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"the farthest ahead ","color":"white"},{"translate":"runner.","color":"gray"}]'}
summon area_effect_cloud 188.75 79.75 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"You want to use this if a"}]'}
summon area_effect_cloud 188.75 79.5 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"runner","color":"gray"},{"translate":" gets beyond you.","color":"white"}]'}

summon area_effect_cloud 192.65 81.0 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"The "},{"translate":"gladiators","color":"red"},{"translate":" win the match","color":"white"}]'}
summon area_effect_cloud 192.65 80.75 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"as long as they stop at least"}]'}
summon area_effect_cloud 192.65 80.5 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"half of the "},{"translate":"runners","color":"gray"}]'}
summon area_effect_cloud 192.65 80.25 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"from reaching the end.","color":"white"}]'}

summon area_effect_cloud 196.65 81.0 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"Eliminated "},{"translate":"runners","color":"gray"},{"translate":" can still win ","color":"white"}]'}
summon area_effect_cloud 196.65 80.75 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"the match as long as half of"}]'}
summon area_effect_cloud 196.65 80.5 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"the original "},{"translate":"runners","color":"gray"}]'}
summon area_effect_cloud 196.65 80.25 -108 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"touch the finish line.","color":"white"}]'}

summon area_effect_cloud 200 81.25 -106.25 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"Each team has four","color":"white"}]'}
summon area_effect_cloud 200 81.0 -106.25 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"custom classes.","color":"white"}]'}
summon area_effect_cloud 200 80.75 -106.25 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"You can select them in","color":"white"}]'}
summon area_effect_cloud 200 80.5 -106.25 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"your book or during the","color":"white"}]'}
summon area_effect_cloud 200 80.25 -106.25 {Duration:100000000,Tags:["tutorial_text"],CustomNameVisible:1,CustomName:'[{"translate":"warmup phase of the game.","color":"white"}]'}








scoreboard objectives add tutorial dummy
scoreboard players set -1 tutorial -1
scoreboard objectives add running_leg dummy

kill @e[type=armor_stand,tag=tutorial_3_1]
kill @e[type=armor_stand,tag=tutorial_3_2]
summon armor_stand 178 82.05 -109 {NoGravity:1b,Tags:["tutorial_3_1"],Invisible:1b,DisabledSlots:2039583,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:16}}],Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],Head:[1.0f,0.0f,0.0f]},ShowArms:1b,Rotation:[90.0f,0.0f]}
summon armor_stand 178 82 -109 {NoBasePlate:1b,Tags:["tutorial_3_2"],Invisible:0b,DisabledSlots:2039583,Invulnerable:1b,ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9209957}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1557211511,1441743481,-1420206844,721358116],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDk0N2RjOTgyM2I1Nzk2NjJlMzZhMTZkZmNlOTUxYzRlNDFkMmUwYWJhM2Q2NWI3YWU3ZmRlNTkxZDg3OWVkIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"x",lvl:1}]}},{}],Pose:{RightArm:[-30.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],Head:[2.0f,0.0f,0.0f]},ShowArms:1b,Rotation:[90.0f,0.0f]}
scoreboard players set @e[tag=tutorial_3_2] tutorial 0

kill @e[type=armor_stand,tag=tutorial_4_1]
kill @e[type=armor_stand,tag=tutorial_4_2]
summon armor_stand 184 80.05 -109 {NoGravity:1b,Tags:["tutorial_4_1"],Invisible:1b,DisabledSlots:2039583,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:16}}],Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],Head:[1.0f,0.0f,0.0f]},ShowArms:1b,Rotation:[115.0f,0.0f]}
summon armor_stand 184 80 -109 {NoBasePlate:1b,Tags:["tutorial_4_2"],Invisible:0b,DisabledSlots:2039583,Invulnerable:1b,ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9209957}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1557211511,1441743481,-1420206844,721358116],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDk0N2RjOTgyM2I1Nzk2NjJlMzZhMTZkZmNlOTUxYzRlNDFkMmUwYWJhM2Q2NWI3YWU3ZmRlNTkxZDg3OWVkIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"x",lvl:1}]}},{}],Pose:{RightArm:[200.0f,180.0f,340.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],Head:[2.0f,0.0f,0.0f]},ShowArms:1b,Rotation:[115.0f,0.0f]}
scoreboard players set @e[tag=tutorial_4_2,type=armor_stand] tutorial 0
scoreboard objectives add tutorial_tp dummy
kill @e[type=area_effect_cloud,tag=tutorial_tp]
kill @e[type=area_effect_cloud,tag=tutorial_tp_2]
summon area_effect_cloud 32 69 -31 {Tags:["tutorial_tp","tutorial_tp_particles"],Duration:100000000}
summon area_effect_cloud 203 82 -105 {Tags:["tutorial_tp_2","tutorial_tp_particles"],Duration:100000000}
scoreboard players add @e[tag=tutorial_tp,type=area_effect_cloud] tutorial_tp 0
scoreboard players add @e[tag=tutorial_tp_2,type=area_effect_cloud] tutorial_tp 0

kill @e[type=area_effect_cloud,tag=teleport_nameplate]
summon area_effect_cloud 32 71 -31 {Duration:10000000,Tags:["teleport_nameplate"],CustomNameVisible:1b}
kill @e[type=area_effect_cloud,tag=teleport_nameplate_2]
summon area_effect_cloud 203 84 -105 {Duration:10000000,Tags:["teleport_nameplate_2"],CustomNameVisible:1b}
scoreboard objectives add tp_nameplate dummy
scoreboard objectives add trident_effects dummy
scoreboard objectives add throw_trident minecraft.used:minecraft.trident
scoreboard objectives add lobby_mount dummy
scoreboard objectives add check_inventory dummy
gamerule doMobLoot false
scoreboard objectives add time_near_target dummy
kill @e[type=area_effect_cloud,tag=minigame_target]
summon area_effect_cloud 77 77 6 {Duration:10000000,Tags:["minigame_target"]}
summon area_effect_cloud 70 82 9 {Duration:10000000,Tags:["minigame_target"]}
summon area_effect_cloud 71 82 22 {Duration:10000000,Tags:["minigame_target"]}
summon area_effect_cloud 57 76 18 {Duration:10000000,Tags:["minigame_target"]}
summon area_effect_cloud 57 85 29 {Duration:10000000,Tags:["minigame_target"]}
summon area_effect_cloud 50 89 30 {Duration:10000000,Tags:["minigame_target"]}
scoreboard objectives add particle_limit dummy
scoreboard objectives add lobby_minigame dummy
scoreboard players add $time lobby_minigame 0
scoreboard objectives remove highscore
scoreboard objectives add highscore dummy
scoreboard players add @a highscore 0
team add green
team modify green color green
kill @e[type=area_effect_cloud,tag=target_text]
scoreboard players set $highscore lobby_minigame 0
summon area_effect_cloud 45 74.0 3 {Duration:1000000,Tags:["target_text"],CustomNameVisible:1,CustomName:'[{"translate":"Gladiator Practice","color":"#9c9558","bold":true}]'}
summon area_effect_cloud 45 73.75 3 {Duration:1000000,Tags:["target_text","highscore_nameplate"],CustomNameVisible:1,CustomName:'[{"translate":"Highscore: ","color":"gold"},{"translate":"None","color":"yellow"}]'}
summon area_effect_cloud 45 73.5 3 {Duration:1000000,Tags:["target_text","highscore_nameplate","get_highscore_name"],CustomNameVisible:1,CustomName:'[{"translate":"Held by: ","color":"dark_green"},{"translate":"No one","color":"green"}]'}
scoreboard objectives add alt_trident dummy
scoreboard objectives add auto_ready dummy
scoreboard players add $number auto_ready 0
scoreboard objectives add custom_gen dummy
scoreboard players add $segments custom_gen 0
scoreboard players add $long custom_gen 0
scoreboard players add $med custom_gen 0
scoreboard players add $small custom_gen 0
scoreboard objectives add credits dummy
scoreboard objectives add open_echest minecraft.custom:minecraft.open_enderchest
scoreboard objectives add chest_clear dummy
scoreboard objectives add screen dummy
scoreboard objectives add compare dummy

scoreboard objectives add stat_win dummy
scoreboard objectives add stat_r_win dummy
scoreboard objectives add stat_g_win dummy
scoreboard objectives add stat_bands dummy
scoreboard objectives add stat_punches dummy
team add spectator
team modify spectator displayName {"translate":"Spectator"}
team modify spectator prefix [{"translate":"[","color":"gray","bold":true},{"translate":"Spectator","color":"white","bold":false},{"translate":"] ","color":"gray","bold":true}]

team add waiting
team modify waiting displayName {"translate":"Waiting"}
team modify waiting prefix [{"translate":"[","color":"dark_gray","bold":true},{"translate":"Waiting","color":"gray","bold":false},{"translate":"] ","color":"dark_gray","bold":true}]
scoreboard objectives add resetting dummy
scoreboard objectives add adv_run dummy
gamerule reducedDebugInfo true



team add yellow
team modify yellow color yellow

scoreboard objectives add pregame dummy

kill @e[type=area_effect_cloud,tag=start_button_text]
summon area_effect_cloud 34 71 -40 {Duration:1000000,Tags:["start_button_text"],CustomNameVisible:1,CustomName:'[{"translate":"- ","color":"gray"},{"translate":"🗡","color":"#9c9558","bold":true},{"translate":" Start ","color":"gold"},{"translate":"🗡","color":"#9c9558","bold":true},{"translate":" -","color":"gray"}]'}

scoreboard objectives add drop_ready_book minecraft.dropped:minecraft.carrot_on_a_stick

scoreboard objectives add prefix dummy

scoreboard objectives add alchemist_limit dummy

scoreboard objectives add specter_cooldown dummy

scoreboard objectives add foreseer_cool dummy

scoreboard objectives add shoot_bow minecraft.used:minecraft.bow

scoreboard objectives add puppeteer_cool dummy

scoreboard objectives add save_rot dummy

scoreboard objectives add jump_charge dummy

scoreboard objectives add jump_level dummy

scoreboard objectives add jumper_jump minecraft.custom:minecraft.jump