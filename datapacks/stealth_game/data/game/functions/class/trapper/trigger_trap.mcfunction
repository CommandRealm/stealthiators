effect give @s slowness 2 4 true
effect give @s glowing 2 4
scoreboard players set @s adv_kill_trap 200
playsound minecraft:ui.stonecutter.take_result master @s ~ ~ ~ 1 0
playsound minecraft:block.note_block.bell master @a[tag=playing,team=gladiator] ~ ~ ~ 10000 0.55
particle ash ~ ~1 ~ 0.5 0.5 0.5 0 100
kill @e[type=area_effect_cloud,tag=trap,distance=..2]
summon area_effect_cloud ~ ~ ~ {Tags:["die","trap_tp"],Duration:100}
advancement grant @s only minecraft:custom/step_on_trap