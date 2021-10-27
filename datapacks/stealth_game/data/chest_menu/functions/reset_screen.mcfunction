kill @e[type=item,nbt={Item:{tag:{clickable:1}}}]
execute if entity @s[scores={screen=0}] run function chest_menu:start
execute if entity @s[scores={screen=1}] run function chest_menu:start_cosmetics
execute if entity @s[scores={screen=2}] run function chest_menu:start_mounts
execute if entity @s[scores={screen=3}] run function chest_menu:start_trident_effects
execute if entity @s[scores={screen=4}] run function chest_menu:start_death_messages
execute if entity @s[scores={screen=5}] run function chest_menu:start_credits
execute if entity @s[scores={screen=6}] run function chest_menu:start_stats
execute if entity @s[scores={screen=7}] run function chest_menu:start_advancement_unlocks
execute if entity @s[scores={screen=8}] run function chest_menu:start_tournaments
execute if entity @s[scores={screen=99}] run function chest_menu:start_titles
clear @s #minecraft:chest_menu
