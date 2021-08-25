tag @s[scores={trident_effects=18}] add change_exclusive
scoreboard players set @s trident_effects 18
scoreboard players set @s[tag=change_exclusive] trident_effects 0


tag @s remove change_exclusive
function chest_menu:start_advancement_unlocks