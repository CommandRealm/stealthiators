tellraw @a[tag=playing] {"translate":"Time is up! The runners didn't touch the finish line this game.","color":"gold"}
bossbar set game_timer name [{"translate":"⚠","color":"yellow"},{"translate":" - Time is up! - ","color":"gold"},{"translate":"⚠","color":"yellow"}]
function game:gameplay/gladiator_cooldown