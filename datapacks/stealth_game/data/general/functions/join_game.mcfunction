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
title @s title {"text":" "}
title @s subtitle {"text":" "}
scoreboard players set @s intro 0
effect give @s blindness 6 255 true
effect give @s slow_falling 6 255 true
replaceitem entity @s armor.head carved_pumpkin{HideFlags:63,Enchantments:[{id:"binding_curse",lvl:1}],display:{Name:'[{"text":"CR Logo","color":"dark_aqua","bold":false,"italic":false}]'},CustomModelData:1}
execute as @a at @s unless entity @s[scores={new_player=1}] run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 0.6
playsound minecraft:entity.wither.death master @s ~ ~ ~ 100 2
scoreboard players set @s ready 0
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