execute if entity @s[scores={lobby_mount=0}] run summon horse ~ ~ ~ {Invulnerable:1b,Tame:1b,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":" "}'}}},Tags:["need_verification"],Invulnerable:1b,Attributes:[{Name:"generic.movement_speed",Base:0.125}],Silent:1b}
execute if entity @s[scores={lobby_mount=0}] run summon area_effect_cloud ~ ~ ~ {Duration:10000,Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,CustomName:'[{"text":" "}]'}
execute if entity @s[scores={lobby_mount=1..}] run summon horse ~ ~ ~ {Tame:1b,SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":" "}'}}},Tags:["need_verification"],ActiveEffects:[{Id:14b,Duration:1000000,ShowParticles:false,Amplifier:0}],Invulnerable:1b,Attributes:[{Name:"generic.movement_speed",Base:0.125}],Silent:1b,CustomName:'[{"text":" "}]'}
execute if entity @s[scores={lobby_mount=1}] run summon donkey ~ ~ ~ {Passengers:[{id:"minecraft:area_effect_cloud",Duration:10000000}],Tame:1b,SaddleItem:{id:"minecraft:saddle",Count:1b},Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=2}] run summon cow ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=3}] run summon mooshroom ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=4}] run summon slime ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,Size:2,NoAI:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=5}] run summon chicken ~ ~ ~ {IsChickenJockey:1b,Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,Passengers:[{id:"minecraft:zombie",IsBaby:1b,Invulnerable:1b,NoAI:1b,Tags:["no_fire","die_at_00"]}],PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=6}] run summon spider ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,Passengers:[{id:"minecraft:cave_spider",PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["die_at_00"],Passengers:[{id:"minecraft:cave_spider",PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["die_at_00"]}]}],PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=7}] run summon polar_bear ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=8}] run summon skeleton_horse ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,Passengers:[{id:"minecraft:area_effect_cloud",Duration:10000000}],Tame:1b,SaddleItem:{id:"minecraft:saddle",Count:1b},PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=9}] run summon bee ~ ~ ~ {Tags:["need_tp_verification","rideable_mob","flying_mount"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=10}] run summon parrot ~ ~ ~ {Tags:["need_tp_verification","rideable_mob","flying_mount"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=11}] run summon vex ~ ~ ~ {Tags:["need_tp_verification","rideable_mob","flying_mount"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=12}] run summon panda ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=13}] run summon hoglin ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,PersistenceRequired:1b,IsImmuneToZombification:1b,NoAI:1b}
execute if entity @s[scores={lobby_mount=14}] run summon sheep ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,PersistenceRequired:1b,CustomName:'[{"text":"jeb_"}]'}
execute if entity @s[scores={lobby_mount=15}] run summon phantom ~ ~ ~ {Size:3,Tags:["need_tp_verification","rideable_mob","flying_mount","no_fire"],Invulnerable:1b,PersistenceRequired:1b,NoAI:1b}
execute if entity @s[scores={lobby_mount=16}] run summon turtle ~ ~ ~ {Tags:["need_tp_verification","rideable_mob"],Invulnerable:1b,Passengers:[{id:"minecraft:turtle",PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["die_at_00"],Passengers:[{id:"minecraft:turtle",PersistenceRequired:1b,Invulnerable:1b,NoAI:1b,Tags:["die_at_00"]}]}],PersistenceRequired:1b}
execute if entity @s[scores={lobby_mount=17}] run tag @e[tag=need_verification,type=horse] add cloud_mount
execute if entity @s[scores={lobby_mount=18}] run tag @e[tag=need_verification,type=horse] add dirt_block

team join no_collision @e[tag=need_verification,type=horse]
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
tag @e[tag=need_tp_verification] remove need_tp_verification
tag @s add has_mob