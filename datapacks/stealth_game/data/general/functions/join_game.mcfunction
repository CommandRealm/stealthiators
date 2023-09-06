execute unless entity @s[scores={resetting=1..}] run function general:reset
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run function general:join_game_on_mount
##general resets:
tag @s remove playing
gamemode adventure @s
effect clear @s
clear @s
tp @s 42 77 -40 75 -30

function general:rank



##intro startup:
title @s times 60 20 20
title @s title {"translate":" "}
title @s subtitle {"translate":" "}
scoreboard players set @s intro 0
effect give @s blindness 6 255 true
effect give @s slow_falling 6 255 true
item replace entity @s armor.head with carved_pumpkin{HideFlags:63,Enchantments:[{id:"binding_curse",lvl:1}],display:{Name:'[{"translate":"CR Logo","color":"dark_aqua","bold":false,"italic":false}]'},CustomModelData:1}
execute as @a at @s unless entity @s[scores={new_player=1}] run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 0.6
playsound minecraft:entity.wither.death master @s ~ ~ ~ 100 2
scoreboard players set @s ready 1
scoreboard players reset @s time_near_target
scoreboard players add @a sel_r_class 0
scoreboard players add @a sel_g_class 0
scoreboard players set @s[scores={sel_r_class=0}] sel_r_class 1
scoreboard players set @s[scores={sel_g_class=0}] sel_g_class 1
scoreboard players enable @s select_class
bossbar set lobby players @a[tag=!playing]
spawnpoint @s 42 67 -40
xp set @s 0 levels
scoreboard players add @s death_msg 0
scoreboard players add @s trident_effects 0
attribute @s minecraft:generic.attack_speed base set 1024
scoreboard players add @s lobby_mount 0
tag @s remove rider_0
tag @s remove rider_1
tag @s remove rider_2
tag @s remove rider_3
tag @s remove rider_4
tag @s remove rider_5
tag @s remove rider_6
tag @s remove rider_7
tag @s remove rider_8
tag @s remove rider_9
tag @s remove rider_10

tag @s remove rider_11
tag @s remove rider_12
tag @s remove rider_13
tag @s remove rider_14
tag @s remove rider_15
tag @s remove rider_16
tag @s remove rider_17
tag @s remove rider_18
tag @s remove rider_19
tag @s remove rider_20

tag @s remove rider_21
tag @s remove rider_22
tag @s remove rider_23
tag @s remove rider_24
tag @s remove rider_25
tag @s remove rider_26
tag @s remove rider_27
tag @s remove rider_28
tag @s remove rider_29
tag @s remove rider_30

tag @s remove rider_31
tag @s remove rider_32
tag @s remove rider_33
tag @s remove rider_34
tag @s remove rider_35
tag @s remove rider_36
tag @s remove rider_37
tag @s remove rider_38
tag @s remove rider_39
tag @s remove rider_40

tag @s remove rider_41
tag @s remove rider_42
tag @s remove rider_43
tag @s remove rider_44
tag @s remove rider_45
tag @s remove rider_46
tag @s remove rider_47
tag @s remove rider_48
tag @s remove rider_49
tag @s remove rider_50
tag @s remove has_mob
scoreboard players add @s highscore 0
recipe take @s *
scoreboard players reset @s lobby_trident
scoreboard players enable @s back_to_lobby

scoreboard players add @s stat_win 0
scoreboard players add @s stat_r_win 0
scoreboard players add @s stat_g_win 0
scoreboard players add @s stat_bands 0
scoreboard players add @s stat_punches 0