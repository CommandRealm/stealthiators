tag @s remove admin
advancement revoke @s everything
recipe take @s *
xp set @s 0 levels
xp set @s 0 points
tag @s remove unlock_m_12
tag @s remove unlock_m_13
tag @s remove unlock_m_14
tag @s remove unlock_m_15
tag @s remove unlock_m_16
tag @s remove unlock_m_17

tag @s remove unlock_t_12
tag @s remove unlock_t_13
tag @s remove unlock_t_14
tag @s remove unlock_t_15
tag @s remove unlock_t_16
tag @s remove unlock_t_17

tag @s remove unlock_d_12
tag @s remove unlock_d_13
tag @s remove unlock_d_14
tag @s remove unlock_d_15
tag @s remove unlock_d_16
tag @s remove unlock_d_17

tag @s remove talked_to_1
tag @s remove talked_to_2
tag @s remove talked_to_3
tag @s remove talked_to_4
tag @s remove talked_to_5
tag @s remove talked_to_6
tag @s remove talked_to_7
tag @s remove talked_to_8
tag @s remove talked_to_9
tag @s remove talked_to_10
tag @s remove talked_to_11
tag @s remove talked_to_12
tag @s remove talked_to_13

function general:update_roles
execute if entity @s[tag=has_submitter] run scoreboard players set @s prefix 50

scoreboard players set @s prefix -1
execute if entity @s[tag=has_cr] run scoreboard players set @s prefix 99
execute if entity @s[tag=has_test] run scoreboard players set @s prefix 0
execute if entity @s[tag=has_help] run scoreboard players set @s prefix 1
execute if entity @s[tag=has_bld] run scoreboard players set @s prefix 2
execute if entity @s[tag=has_prg] run scoreboard players set @s prefix 4
execute if entity @s[tag=has_art] run scoreboard players set @s prefix 8
execute if entity @s[tag=has_srbld] run scoreboard players set @s prefix 3
execute if entity @s[tag=has_srprg] run scoreboard players set @s prefix 5

execute if entity @s[tag=has_pc] run scoreboard players set @s prefix -2
execute if entity @s[tag=has_melon] run scoreboard players set @s prefix -3

execute if entity @s[tag=has_manager] run scoreboard players set @s prefix 6
execute if entity @s[tag=has_lead] run scoreboard players set @s prefix 7



scoreboard players set @s highscore 0
scoreboard players add @s resetting 1

scoreboard players set @s lobby_mount 0
scoreboard players set @s trident_effects 0
scoreboard players set @s death_msg 0
scoreboard players set @s sel_r_class 1
scoreboard players set @s sel_g_class 1
tag @s remove prefer_gladiator


scoreboard players set @s stat_win 0
scoreboard players set @s stat_r_win 0
scoreboard players set @s stat_g_win 0
scoreboard players set @s stat_bands 0
scoreboard players set @s stat_punches 0
scoreboard players set @s adv_run 0
tag @s remove prefix
tag @a remove potential_unlock
tag @a remove potential_cosmetic