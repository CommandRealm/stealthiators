tellraw @a[tag=playing] {"text":"Time is up! The runners didn't touch the finish line this game.","color":"gold"}
bossbar set game_timer name [{"text":"⚠","color":"yellow"},{"text":" - Time is up! - ","color":"gold"},{"text":"⚠","color":"yellow"}]
function game:gameplay/gladiator_cooldown
return 1