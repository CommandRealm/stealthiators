effect give @s minecraft:blindness 5 255
particle minecraft:smoke ~ ~.5 ~ 2 2 2 0.5 100 normal @s
playsound minecraft:entity.illusioner.prepare_blindness master @s ~ ~ ~ 10000 2
tellraw @a[tag=playing] {"text":"A gladiator has been blinded!","color":"#6e4891"}
playsound minecraft:entity.illusioner.mirror_move master @a[tag=playing] ~ ~ ~ 10000 1
return 1