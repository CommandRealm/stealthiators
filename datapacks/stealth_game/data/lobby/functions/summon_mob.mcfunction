execute if entity @s[scores={lobby_mount=0}] run summon minecraft:horse ~ ~ ~ {Invulnerable:1b,Tame:1b,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":" "}'}}},Tags:["need_verification"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.125d}],Silent:1b}
execute if entity @s[scores={lobby_mount=0}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:10000,Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,CustomName:'[{"text":" "}]'}
execute if entity @s[scores={lobby_mount=1..}] run summon minecraft:horse ~ ~ ~ {Tame:1b,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":" "}'}}},Tags:["need_verification"],Invulnerable:1b,Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.125d}],Silent:1b,CustomName:'[{"text":" "}]',active_effects:[{id:"minecraft:invisibility",duration:1000000,show_particles:0b,amplifier:0b}]}
execute if entity @s[scores={lobby_mount=1}] run summon minecraft:donkey ~ ~ ~ {Passengers:[{id:"minecraft:area_effect_cloud",Duration:10000000}],Tame:1b,SaddleItem:{id:"minecraft:saddle",Count:1b},Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=2}] run summon minecraft:cow ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=3}] run summon minecraft:mooshroom ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=4}] run summon minecraft:slime ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,Size:2,NoAI:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=5}] run summon minecraft:chicken ~ ~ ~ {IsChickenJockey:1b,Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,Passengers:[{id:"minecraft:zombie",IsBaby:1b,Invulnerable:1b,NoAI:1b,Tags:["no_fire","0"]}],PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=6}] run summon minecraft:spider ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,Passengers:[{id:"minecraft:cave_spider",PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["0"],Passengers:[{id:"minecraft:cave_spider",PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["0"]}]}],PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=7}] run summon minecraft:polar_bear ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=8}] run summon minecraft:skeleton_horse ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,Passengers:[{id:"minecraft:area_effect_cloud",Duration:10000000}],Tame:1b,SaddleItem:{id:"minecraft:saddle",Count:1b},PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=9}] run summon minecraft:bee ~ ~ ~ {Tags:["need_tp_verification","rideable_mob","flying_mount"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=10}] run summon minecraft:parrot ~ ~ ~ {Tags:["need_tp_verification","rideable_mob","flying_mount"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=11}] run summon minecraft:vex ~ ~ ~ {Tags:["need_tp_verification","rideable_mob","flying_mount"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=12}] run summon minecraft:panda ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=13}] run summon minecraft:hoglin ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,PersistenceRequired:1b,IsImmuneToZombification:1b,NoAI:1b}
execute if entity @s[scores={lobby_mount=14}] run summon minecraft:sheep ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,PersistenceRequired:1b,CustomName:'[{"text":"jeb_"}]'}
execute if entity @s[scores={lobby_mount=15}] run summon minecraft:phantom ~ ~ ~ {Size:3,Tags:["need_tp_verification","rideable_mob","flying_mount","no_fire"],Invulnerable:1b,PersistenceRequired:1b,NoAI:1b}
execute if entity @s[scores={lobby_mount=16}] run summon minecraft:turtle ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,Passengers:[{id:"minecraft:turtle",PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["0"],Passengers:[{id:"minecraft:turtle",PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["0"]}]}],PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=17}] run tag @e[type=minecraft:horse,tag=need_verification] add cloud_mount
execute if entity @s[scores={lobby_mount=18}] run tag @e[type=minecraft:horse,tag=need_verification] add dirt_block

team join no_collision @e[type=minecraft:horse,tag=need_verification]
team join no_collision @e[tag=need_tp_verification]
tag @s remove rider_10
tag @s remove rider_9
tag @s remove rider_8
tag @s remove rider_7
tag @s remove rider_6
tag @s remove rider_5
tag @s remove rider_4
tag @s remove rider_3
tag @s remove rider_2
tag @s remove rider_1
tag @s remove rider_0

tag @s remove rider_19
tag @s remove rider_18
tag @s remove rider_17
tag @s remove rider_16
tag @s remove rider_15
tag @s remove rider_14
tag @s remove rider_13
tag @s remove rider_12
tag @s remove rider_11
tag @s remove rider_20

tag @s remove rider_29
tag @s remove rider_28
tag @s remove rider_27
tag @s remove rider_26
tag @s remove rider_25
tag @s remove rider_24
tag @s remove rider_23
tag @s remove rider_22
tag @s remove rider_21
tag @s remove rider_30

tag @s remove rider_39
tag @s remove rider_38
tag @s remove rider_37
tag @s remove rider_36
tag @s remove rider_35
tag @s remove rider_34
tag @s remove rider_33
tag @s remove rider_32
tag @s remove rider_31
tag @s remove rider_40

tag @s remove rider_49
tag @s remove rider_48
tag @s remove rider_47
tag @s remove rider_46
tag @s remove rider_45
tag @s remove rider_44
tag @s remove rider_43
tag @s remove rider_42
tag @s remove rider_41
tag @s remove rider_50

execute if entity @a[tag=rider_49] unless entity @a[tag=rider_50] run tag @s add rider_50
execute if entity @a[tag=rider_48] unless entity @a[tag=rider_49] run tag @s add rider_49
execute if entity @a[tag=rider_47] unless entity @a[tag=rider_48] run tag @s add rider_48
execute if entity @a[tag=rider_46] unless entity @a[tag=rider_47] run tag @s add rider_47
execute if entity @a[tag=rider_45] unless entity @a[tag=rider_46] run tag @s add rider_46
execute if entity @a[tag=rider_44] unless entity @a[tag=rider_45] run tag @s add rider_45
execute if entity @a[tag=rider_43] unless entity @a[tag=rider_44] run tag @s add rider_44
execute if entity @a[tag=rider_42] unless entity @a[tag=rider_43] run tag @s add rider_43
execute if entity @a[tag=rider_41] unless entity @a[tag=rider_42] run tag @s add rider_42
execute if entity @a[tag=rider_40] unless entity @a[tag=rider_41] run tag @s add rider_41

execute if entity @a[tag=rider_39] unless entity @a[tag=rider_40] run tag @s add rider_40
execute if entity @a[tag=rider_38] unless entity @a[tag=rider_39] run tag @s add rider_39
execute if entity @a[tag=rider_37] unless entity @a[tag=rider_38] run tag @s add rider_38
execute if entity @a[tag=rider_36] unless entity @a[tag=rider_37] run tag @s add rider_37
execute if entity @a[tag=rider_35] unless entity @a[tag=rider_36] run tag @s add rider_36
execute if entity @a[tag=rider_34] unless entity @a[tag=rider_35] run tag @s add rider_35
execute if entity @a[tag=rider_33] unless entity @a[tag=rider_34] run tag @s add rider_34
execute if entity @a[tag=rider_32] unless entity @a[tag=rider_33] run tag @s add rider_33
execute if entity @a[tag=rider_31] unless entity @a[tag=rider_32] run tag @s add rider_32
execute if entity @a[tag=rider_30] unless entity @a[tag=rider_31] run tag @s add rider_31

execute if entity @a[tag=rider_29] unless entity @a[tag=rider_30] run tag @s add rider_30
execute if entity @a[tag=rider_28] unless entity @a[tag=rider_29] run tag @s add rider_29
execute if entity @a[tag=rider_27] unless entity @a[tag=rider_28] run tag @s add rider_28
execute if entity @a[tag=rider_26] unless entity @a[tag=rider_27] run tag @s add rider_27
execute if entity @a[tag=rider_25] unless entity @a[tag=rider_26] run tag @s add rider_26
execute if entity @a[tag=rider_24] unless entity @a[tag=rider_25] run tag @s add rider_25
execute if entity @a[tag=rider_23] unless entity @a[tag=rider_24] run tag @s add rider_24
execute if entity @a[tag=rider_22] unless entity @a[tag=rider_23] run tag @s add rider_23
execute if entity @a[tag=rider_21] unless entity @a[tag=rider_22] run tag @s add rider_22
execute if entity @a[tag=rider_20] unless entity @a[tag=rider_21] run tag @s add rider_21

execute if entity @a[tag=rider_19] unless entity @a[tag=rider_20] run tag @s add rider_20
execute if entity @a[tag=rider_18] unless entity @a[tag=rider_19] run tag @s add rider_19
execute if entity @a[tag=rider_17] unless entity @a[tag=rider_18] run tag @s add rider_18
execute if entity @a[tag=rider_16] unless entity @a[tag=rider_17] run tag @s add rider_17
execute if entity @a[tag=rider_15] unless entity @a[tag=rider_16] run tag @s add rider_16
execute if entity @a[tag=rider_14] unless entity @a[tag=rider_15] run tag @s add rider_15
execute if entity @a[tag=rider_13] unless entity @a[tag=rider_14] run tag @s add rider_14
execute if entity @a[tag=rider_12] unless entity @a[tag=rider_13] run tag @s add rider_13
execute if entity @a[tag=rider_11] unless entity @a[tag=rider_12] run tag @s add rider_12
execute if entity @a[tag=rider_10] unless entity @a[tag=rider_11] run tag @s add rider_11

execute if entity @a[tag=rider_9] unless entity @a[tag=rider_10] run tag @s add rider_10
execute if entity @a[tag=rider_8] unless entity @a[tag=rider_9] run tag @s add rider_9
execute if entity @a[tag=rider_7] unless entity @a[tag=rider_8] run tag @s add rider_8
execute if entity @a[tag=rider_6] unless entity @a[tag=rider_7] run tag @s add rider_7
execute if entity @a[tag=rider_5] unless entity @a[tag=rider_6] run tag @s add rider_6
execute if entity @a[tag=rider_4] unless entity @a[tag=rider_5] run tag @s add rider_5
execute if entity @a[tag=rider_3] unless entity @a[tag=rider_4] run tag @s add rider_4
execute if entity @a[tag=rider_2] unless entity @a[tag=rider_3] run tag @s add rider_3
execute if entity @a[tag=rider_1] unless entity @a[tag=rider_2] run tag @s add rider_2
execute if entity @a[tag=rider_0] unless entity @a[tag=rider_1] run tag @s add rider_1
execute unless entity @a[tag=rider_0] run tag @s add rider_0


execute if entity @s[tag=rider_10] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_10
execute if entity @s[tag=rider_9] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_9
execute if entity @s[tag=rider_8] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_8
execute if entity @s[tag=rider_7] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_7
execute if entity @s[tag=rider_6] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_6
execute if entity @s[tag=rider_5] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_5
execute if entity @s[tag=rider_4] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_4
execute if entity @s[tag=rider_3] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_3
execute if entity @s[tag=rider_2] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_2
execute if entity @s[tag=rider_1] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_1
execute if entity @s[tag=rider_0] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_0

execute if entity @s[tag=rider_19] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_19
execute if entity @s[tag=rider_18] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_18
execute if entity @s[tag=rider_17] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_17
execute if entity @s[tag=rider_16] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_16
execute if entity @s[tag=rider_15] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_15
execute if entity @s[tag=rider_14] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_14
execute if entity @s[tag=rider_13] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_13
execute if entity @s[tag=rider_12] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_12
execute if entity @s[tag=rider_11] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_11
execute if entity @s[tag=rider_20] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_20

execute if entity @s[tag=rider_29] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_29
execute if entity @s[tag=rider_28] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_28
execute if entity @s[tag=rider_27] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_27
execute if entity @s[tag=rider_26] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_26
execute if entity @s[tag=rider_25] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_25
execute if entity @s[tag=rider_24] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_24
execute if entity @s[tag=rider_23] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_23
execute if entity @s[tag=rider_22] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_22
execute if entity @s[tag=rider_21] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_21
execute if entity @s[tag=rider_30] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_30

execute if entity @s[tag=rider_39] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_39
execute if entity @s[tag=rider_38] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_38
execute if entity @s[tag=rider_37] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_37
execute if entity @s[tag=rider_36] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_36
execute if entity @s[tag=rider_35] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_35
execute if entity @s[tag=rider_34] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_34
execute if entity @s[tag=rider_33] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_33
execute if entity @s[tag=rider_32] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_32
execute if entity @s[tag=rider_31] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_31
execute if entity @s[tag=rider_40] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_40

execute if entity @s[tag=rider_49] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_49
execute if entity @s[tag=rider_48] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_48
execute if entity @s[tag=rider_47] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_47
execute if entity @s[tag=rider_46] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_46
execute if entity @s[tag=rider_45] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_45
execute if entity @s[tag=rider_44] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_44
execute if entity @s[tag=rider_43] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_43
execute if entity @s[tag=rider_42] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_42
execute if entity @s[tag=rider_41] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_41
execute if entity @s[tag=rider_50] run tag @e[tag=need_verification,sort=nearest,limit=1] add rider_50

tag @e[tag=need_verification] remove need_verification
execute if entity @s[tag=rider_10] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_10
execute if entity @s[tag=rider_9] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_9
execute if entity @s[tag=rider_8] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_8
execute if entity @s[tag=rider_7] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_7
execute if entity @s[tag=rider_6] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_6
execute if entity @s[tag=rider_5] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_5
execute if entity @s[tag=rider_4] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_4
execute if entity @s[tag=rider_3] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_3
execute if entity @s[tag=rider_2] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_2
execute if entity @s[tag=rider_1] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_1
execute if entity @s[tag=rider_0] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_0

execute if entity @s[tag=rider_19] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_19
execute if entity @s[tag=rider_18] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_18
execute if entity @s[tag=rider_17] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_17
execute if entity @s[tag=rider_16] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_16
execute if entity @s[tag=rider_15] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_15
execute if entity @s[tag=rider_14] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_14
execute if entity @s[tag=rider_13] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_13
execute if entity @s[tag=rider_12] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_12
execute if entity @s[tag=rider_11] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_11
execute if entity @s[tag=rider_20] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_20

execute if entity @s[tag=rider_29] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_29
execute if entity @s[tag=rider_28] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_28
execute if entity @s[tag=rider_27] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_27
execute if entity @s[tag=rider_26] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_26
execute if entity @s[tag=rider_25] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_25
execute if entity @s[tag=rider_24] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_24
execute if entity @s[tag=rider_23] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_23
execute if entity @s[tag=rider_22] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_22
execute if entity @s[tag=rider_21] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_21
execute if entity @s[tag=rider_30] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_30

execute if entity @s[tag=rider_39] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_39
execute if entity @s[tag=rider_38] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_38
execute if entity @s[tag=rider_37] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_37
execute if entity @s[tag=rider_36] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_36
execute if entity @s[tag=rider_35] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_35
execute if entity @s[tag=rider_34] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_34
execute if entity @s[tag=rider_33] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_33
execute if entity @s[tag=rider_32] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_32
execute if entity @s[tag=rider_31] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_31
execute if entity @s[tag=rider_40] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_40

execute if entity @s[tag=rider_49] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_49
execute if entity @s[tag=rider_48] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_48
execute if entity @s[tag=rider_47] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_47
execute if entity @s[tag=rider_46] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_46
execute if entity @s[tag=rider_45] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_45
execute if entity @s[tag=rider_44] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_44
execute if entity @s[tag=rider_43] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_43
execute if entity @s[tag=rider_42] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_42
execute if entity @s[tag=rider_41] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_41
execute if entity @s[tag=rider_50] run tag @e[tag=need_tp_verification,sort=nearest,limit=1] add tp_riding_50
tag @e[tag=need_tp_verification] remove need_tp_verification
tag @s add has_mob
return 1