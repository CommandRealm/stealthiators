scoreboard players operation @s lobby_mount = $change compare
execute if entity @s[tag=has_mob] run function lobby:remove_mob
clear @s #minecraft:spawn_eggs
function lobby:get_mob_spawn
function chest_menu:start_mounts