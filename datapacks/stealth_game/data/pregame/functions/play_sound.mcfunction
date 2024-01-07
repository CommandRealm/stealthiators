scoreboard players set $time sound_second 20
execute as @a[scores={ready=0}] at @s run playsound minecraft:item.trident.hit master @s ~ ~ ~ 1000 0
execute as @a[scores={ready=1}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.5 0
execute as @a[scores={ready=1}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 0.25 0.6
return 1