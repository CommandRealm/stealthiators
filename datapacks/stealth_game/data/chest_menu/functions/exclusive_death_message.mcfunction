tag @s[scores={death_msg=18}] add change_exclusive
scoreboard players set @s death_msg 18
scoreboard players set @s[tag=change_exclusive] death_msg 0


tag @s remove change_exclusive
function chest_menu:start_advancement_unlocks
return 1