tellraw @s [{"translate":"Please stay in the arena!","color":"red"}]
playsound minecraft:block.note_block.flute master @s ~ ~ ~ 100000 0
tp @s 1021 156 -17 0 10
tp @s @p[tag=playing,team=sneaker]
tp @s @p[tag=playing,team=gladiator]