execute unless entity @s[tag=unlock_m_15] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","m_15"],Duration:1}
execute unless entity @s[tag=unlock_m_14] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","m_14"],Duration:1}
execute unless entity @s[tag=unlock_m_13] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","m_13"],Duration:1}
execute unless entity @s[tag=unlock_m_12] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","m_12"],Duration:1}

execute unless entity @s[tag=unlock_t_15] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","t_15"],Duration:1}
execute unless entity @s[tag=unlock_t_14] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","t_14"],Duration:1}
execute unless entity @s[tag=unlock_t_13] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","t_13"],Duration:1}
execute unless entity @s[tag=unlock_t_12] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","t_12"],Duration:1}

execute unless entity @s[tag=unlock_d_15] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","d_15"],Duration:1}
execute unless entity @s[tag=unlock_d_14] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","d_14"],Duration:1}
execute unless entity @s[tag=unlock_d_13] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","d_13"],Duration:1}
execute unless entity @s[tag=unlock_d_12] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","d_12"],Duration:1}

tag @e[type=area_effect_cloud,tag=cosmetic_unlock,sort=random,limit=1] add selected_unlock
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=m_15] run function cosmetic:unlock_m_15
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=m_14] run function cosmetic:unlock_m_14
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=m_13] run function cosmetic:unlock_m_13
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=m_12] run function cosmetic:unlock_m_12

execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=t_15] run function cosmetic:unlock_t_15
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=t_14] run function cosmetic:unlock_t_14
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=t_13] run function cosmetic:unlock_t_13
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=t_12] run function cosmetic:unlock_t_12

execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=d_15] run function cosmetic:unlock_d_15
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=d_14] run function cosmetic:unlock_d_14
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=d_13] run function cosmetic:unlock_d_13
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=d_12] run function cosmetic:unlock_d_12
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.20 1.85
kill @e[tag=cosmetic_unlock,type=area_effect_cloud]