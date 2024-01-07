tag @s add unlocked_legendary
execute unless entity @s[tag=unlock_m_16] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","m_16"],Duration:1}
execute unless entity @s[tag=unlock_m_17] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","m_17"],Duration:1}
execute unless entity @s[tag=unlock_t_16] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","t_16"],Duration:1}
execute unless entity @s[tag=unlock_t_17] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","t_17"],Duration:1}
execute unless entity @s[tag=unlock_d_16] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","d_16"],Duration:1}
execute unless entity @s[tag=unlock_d_17] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","d_17"],Duration:1}
tag @e[type=minecraft:area_effect_cloud,tag=cosmetic_unlock,sort=random,limit=1] add selected_unlock
execute if entity @e[type=minecraft:area_effect_cloud,tag=selected_unlock,tag=m_16] run function cosmetic:unlock_m_16
execute if entity @e[type=minecraft:area_effect_cloud,tag=selected_unlock,tag=m_17] run function cosmetic:unlock_m_17
execute if entity @e[type=minecraft:area_effect_cloud,tag=selected_unlock,tag=t_16] run function cosmetic:unlock_t_16
execute if entity @e[type=minecraft:area_effect_cloud,tag=selected_unlock,tag=t_17] run function cosmetic:unlock_t_17
execute if entity @e[type=minecraft:area_effect_cloud,tag=selected_unlock,tag=d_16] run function cosmetic:unlock_d_16
execute if entity @e[type=minecraft:area_effect_cloud,tag=selected_unlock,tag=d_17] run function cosmetic:unlock_d_17
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.20 2
kill @e[type=minecraft:area_effect_cloud,tag=cosmetic_unlock]
return 1