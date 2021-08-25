scoreboard players set @s check_inventory 0
execute store result score @s check_inventory run clear @s #minecraft:spawn_eggs{mob_spawn:1}
execute if block ~ ~.15 ~ #minecraft:valid_summon if block ~ ~1.15 ~ #minecraft:valid_summon if entity @s[scores={check_inventory=1..}] run function lobby:summon_mob
execute if block ~ ~.15 ~ #minecraft:valid_summon unless block ~ ~1.15 ~ #minecraft:valid_summon if entity @s[scores={check_inventory=1..}] run function lobby:invalid_summon
execute unless block ~ ~.15 ~ #minecraft:valid_summon if block ~ ~1.15 ~ #minecraft:valid_summon if entity @s[scores={check_inventory=1..}] run function lobby:invalid_summon
execute unless block ~ ~.15 ~ #minecraft:valid_summon unless block ~ ~1.15 ~ #minecraft:valid_summon if entity @s[scores={check_inventory=1..}] run function lobby:invalid_summon













scoreboard players set @s check_inventory 0