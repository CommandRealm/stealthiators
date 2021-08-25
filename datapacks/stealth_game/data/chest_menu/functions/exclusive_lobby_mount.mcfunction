tag @s[scores={lobby_mount=18}] add change_exclusive
scoreboard players set @s lobby_mount 18
scoreboard players set @s[tag=change_exclusive] lobby_mount 0
clear @s #minecraft:spawn_eggs

tag @s remove change_exclusive
function chest_menu:start_advancement_unlocks