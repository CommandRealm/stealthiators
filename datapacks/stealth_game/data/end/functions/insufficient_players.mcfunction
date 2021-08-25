tellraw @a {"text":"Insufficient amount of players to complete the game.","color":"red"}
function end:players
execute as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 100000 0