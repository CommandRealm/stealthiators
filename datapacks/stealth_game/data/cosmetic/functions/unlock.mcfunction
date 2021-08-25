scoreboard players set $mod random 9
function random:random
execute unless entity @s[tag=unlock_m_16,tag=unlock_m_17,tag=unlock_t_16,tag=unlock_t_17,tag=unlock_d_16,tag=unlock_d_17] if score $rand random matches 0..1 run function cosmetic:unlock_legendary
execute unless entity @s[tag=unlocked_legendary] unless entity @s[tag=unlock_m_12,tag=unlock_m_13,tag=unlock_m_14,tag=unlock_m_15,tag=unlock_t_12,tag=unlock_t_13,tag=unlock_t_14,tag=unlock_t_15,tag=unlock_d_12,tag=unlock_d_13,tag=unlock_d_14,tag=unlock_d_15] if score $rand random matches 2.. run function cosmetic:unlock_epic
tag @s remove unlocked_legendary