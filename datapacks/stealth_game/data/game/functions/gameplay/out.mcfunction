
execute if score $number infection matches 0 if entity @s[scores={runner_id=1}] run summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["die","revive_spot","revive_1"]}
execute if score $number infection matches 0 if entity @s[scores={runner_id=2}] run summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["die","revive_spot","revive_2"]}
execute if score $number infection matches 0 if entity @s[scores={runner_id=3}] run summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["die","revive_spot","revive_3"]}
execute if score $number infection matches 0 if entity @s[scores={runner_id=4}] run summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["die","revive_spot","revive_4"]}
execute if score $number infection matches 0 if entity @s[scores={runner_id=5}] run summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["die","revive_spot","revive_5"]}
execute if score $number infection matches 0 if entity @s[scores={runner_id=6}] run summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["die","revive_spot","revive_6"]}
execute if score $number infection matches 0 if entity @s[scores={runner_id=7}] run summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["die","revive_spot","revive_7"]}
execute if score $number infection matches 0 if entity @s[scores={runner_id=8}] run summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["die","revive_spot","revive_8"]}
execute if score $number infection matches 0 if entity @s[scores={runner_id=9}] run summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["die","revive_spot","revive_9"]}
execute if score $number infection matches 0 if entity @s[scores={runner_id=10}] run summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["die","revive_spot","revive_10"]}
execute if score $number infection matches 0 if entity @s[scores={runner_id=11}] run summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["die","revive_spot","revive_11"]}

execute if score $number infection matches 1 if entity @s[scores={runner_id=1}] run summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["die","revive_spot","revive_1"]}
execute if score $number infection matches 1 if entity @s[scores={runner_id=2}] run summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["die","revive_spot","revive_2"]}
execute if score $number infection matches 1 if entity @s[scores={runner_id=3}] run summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["die","revive_spot","revive_3"]}
execute if score $number infection matches 1 if entity @s[scores={runner_id=4}] run summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["die","revive_spot","revive_4"]}
execute if score $number infection matches 1 if entity @s[scores={runner_id=5}] run summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["die","revive_spot","revive_5"]}
execute if score $number infection matches 1 if entity @s[scores={runner_id=6}] run summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["die","revive_spot","revive_6"]}
execute if score $number infection matches 1 if entity @s[scores={runner_id=7}] run summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["die","revive_spot","revive_7"]}
execute if score $number infection matches 1 if entity @s[scores={runner_id=8}] run summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["die","revive_spot","revive_8"]}
execute if score $number infection matches 1 if entity @s[scores={runner_id=9}] run summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["die","revive_spot","revive_9"]}
execute if score $number infection matches 1 if entity @s[scores={runner_id=10}] run summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["die","revive_spot","revive_10"]}
execute if score $number infection matches 1 if entity @s[scores={runner_id=11}] run summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["die","revive_spot","revive_11"]}

team join dark_gray
execute if entity @s[scores={death_msg=0}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" is out.","color":"gold"}]
execute if entity @s[scores={death_msg=1}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" stopped running.","color":"gold"}]
execute if entity @s[scores={death_msg=2}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" vanished.","color":"gold"}]
execute if entity @s[scores={death_msg=3}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" didn't see the tutorial.","color":"gold"}]
execute if entity @s[scores={death_msg=4}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" wanted to play a different game.","color":"gold"}]
execute if entity @s[scores={death_msg=5}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" got doomed.","color":"gold"}]
execute if entity @s[scores={death_msg=6}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" left the Colosseum.","color":"gold"}]
execute if entity @s[scores={death_msg=7}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" just plain died.","color":"gold"}]
execute if entity @s[scores={death_msg=8}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" found a gladiator.","color":"gold"}]
execute if entity @s[scores={death_msg=9}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" would rather spectate.","color":"gold"}]
execute if entity @s[scores={death_msg=10}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" was a casualty of the trident.","color":"gold"}]
execute if entity @s[scores={death_msg=11}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" just wanted to stand on the finish line.","color":"gold"}]
execute if entity @s[scores={death_msg=12}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" hugged a gladiator.","color":"gold"}]
execute if entity @s[scores={death_msg=13}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" tried, but not hard enough.","color":"gold"}]
execute if entity @s[scores={death_msg=14}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" is waiting for a medic.","color":"gold"}]
execute if entity @s[scores={death_msg=15}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" learned you were supposed to be sneaky.","color":"gold"}]
execute if entity @s[scores={death_msg=16}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" forgot they were wearing sneakers.","color":"gold"}]
execute if entity @s[scores={death_msg=17}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" lacked stealth.","color":"gold"}]
execute if entity @s[scores={death_msg=18}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" just wanted to show off their death message.","color":"gold"}]
team join dead @s
effect clear @s
playsound minecraft:item.shield.block master @s ~ ~ ~ 1 0
playsound minecraft:item.shield.block master @s ~ ~ ~ 1 1
playsound minecraft:item.shield.block master @s ~ ~ ~ 1 2
playsound minecraft:entity.wither_skeleton.death master @a ~ ~ ~ 100000 2
playsound minecraft:custom.out master @a[team=gladiator] ~ ~ ~ 100000 0
scoreboard players add @a[tag=playing,team=gladiator,tag=!infected_gladiator] points 2
scoreboard players add @p[tag=playing,team=gladiator,scores={damage_dealt=1..}] stat_punches 1
advancement grant @a[tag=playing,team=gladiator,scores={damage_dealt=1..}] only minecraft:custom/punch_runner
advancement grant @a[tag=playing,team=gladiator,scores={damage_dealt=1..,adv_backdoor=1..}] only minecraft:custom/kill_after_backdoor
execute if entity @s[tag=playing,scores={adv_kill_trap=1..}] run advancement grant @p[tag=playing,team=gladiator,scores={damage_dealt=1..}] only minecraft:custom/trap_kill
execute at @e[type=minecraft:area_effect_cloud,tag=final_hallway] positioned ~-14 ~-50 ~-27 at @s[dx=27,dz=9,dy=150] run advancement grant @p[tag=playing,team=gladiator,scores={damage_dealt=1..}] only minecraft:custom/kill_on_finish_line
advancement grant @a[tag=playing,team=gladiator,scores={damage_dealt=1..},nbt={ActiveEffects:[{Id:1b}]}] only minecraft:custom/dash_kill
scoreboard players reset @p[tag=playing,team=gladiator,scores={damage_dealt=1..}] damage_dealt
advancement grant @a[tag=playing,team=gladiator,advancements={custom/punch_runner=true,custom/dash_kill=true,custom/use_backdoor=true,custom/kill_after_backdoor=true,custom/trap_kill=true,custom/kill_on_finish_line=true,custom/unlock_trident_effect=false}] only minecraft:custom/unlock_trident_effect
gamemode spectator @s
clear @s
scoreboard players set @s infect_timer 0
title @s times 0 20 5
scoreboard players operation @s adv_run += @s adv_blocks_run
advancement grant @s[scores={adv_run=30000..}] only minecraft:custom/run_300_blocks