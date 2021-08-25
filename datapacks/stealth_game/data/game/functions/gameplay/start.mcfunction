team join sneaker @a[tag=playing]
scoreboard players set $players number 0
execute as @a[tag=playing] at @s run scoreboard players add $players number 1
scoreboard players operation $g_left gladiators = $number gladiators
execute if score $number gladiators matches 0 run function game:gameplay/auto_gladiators
execute if score $number mode matches 0 run function game:gameplay/select_gladiators
execute if score $number mode matches 1 run function game:gameplay/rotation/select_gladiator
execute unless entity @a[team=gladiator,tag=playing] run team join sneaker @r[tag=playing]
effect give @a[tag=playing] regeneration 100000 255 true
effect give @a[team=sneaker] invisibility 10000 255 true
effect give @a[team=gladiator] resistance 10000 2 true
gamemode adventure @a[tag=playing]
execute if score $round game matches 1 run title @a[tag=playing] subtitle [{"text":""}]
execute if score $round game matches 1 run title @a[tag=playing] title [{"text":""}]
execute if score $round game matches 1 if score $number mode matches 1 run title @a[tag=playing] title [{"text":"Round ","color":"#b4ae8f","bold":true},{"text":"1","color":"#d1c48a","bold":true}]
clear @a[tag=playing]
kill @e[type=trident,x=1000,y=66,z=0,distance=..500]
kill @e[type=snowball]
title @a[tag=playing] times 5 60 5
tp @a[team=sneaker,distance=1..] 1021 152 -35 0 0
tp @a[team=gladiator,distance=1..] 1021 151 75 180 0
effect clear @a[tag=playing] blindness
effect clear @a[tag=playing] levitation
scoreboard objectives remove damage_taken
scoreboard objectives add damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives remove damage_dealt
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives remove throw_snowball
scoreboard objectives add throw_snowball minecraft.used:minecraft.snowball
scoreboard players reset @a right_click
scoreboard objectives remove band_number
scoreboard objectives add band_number dummy
scoreboard players reset @a dash_cooldown
scoreboard players reset @a door_cooldown
scoreboard players reset @a blind_cooldown
scoreboard players reset @a locator
scoreboard players reset @a display_cooldown
scoreboard players set $time time_till_end -1
fill 1019 151 -22 1023 157 -22 minecraft:iron_bars replace air
team modify sneaker seeFriendlyInvisibles false
team modify gladiator seeFriendlyInvisibles false
forceload remove 2340 127 1980 -21
forceload add 1070 341 920 100
forceload add 1070 99 920 -91
kill @e[type=item,nbt={Item:{id:"minecraft:trident"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:snowball"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:snow"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:item_frame"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:painting"}}]
kill @e[type=arrow]
scoreboard objectives remove runner_id
scoreboard objectives add runner_id dummy
tag @a remove used_revive
tag @a remove using_revive
tag @a remove get_id
tag @r[tag=playing,tag=!get_id,team=sneaker] add get_id
scoreboard players add @a[tag=get_id,team=sneaker] runner_id 1
tag @r[tag=playing,tag=!get_id,team=sneaker] add get_id
scoreboard players add @a[tag=get_id,team=sneaker] runner_id 1
tag @r[tag=playing,tag=!get_id,team=sneaker] add get_id
scoreboard players add @a[tag=get_id,team=sneaker] runner_id 1
tag @r[tag=playing,tag=!get_id,team=sneaker] add get_id
scoreboard players add @a[tag=get_id,team=sneaker] runner_id 1
tag @r[tag=playing,tag=!get_id,team=sneaker] add get_id
scoreboard players add @a[tag=get_id,team=sneaker] runner_id 1
tag @r[tag=playing,tag=!get_id,team=sneaker] add get_id
scoreboard players add @a[tag=get_id,team=sneaker] runner_id 1
tag @r[tag=playing,tag=!get_id,team=sneaker] add get_id
scoreboard players add @a[tag=get_id,team=sneaker] runner_id 1
tag @r[tag=playing,tag=!get_id,team=sneaker] add get_id
scoreboard players add @a[tag=get_id,team=sneaker] runner_id 1
tag @r[tag=playing,tag=!get_id,team=sneaker] add get_id
scoreboard players add @a[tag=get_id,team=sneaker] runner_id 1
tag @r[tag=playing,tag=!get_id,team=sneaker] add get_id
scoreboard players add @a[tag=get_id,team=sneaker] runner_id 1
effect give @a[team=gladiator] invisibility 100 255 true
function game:gameplay/start_round

tellraw @a[tag=playing,team=sneaker,scores={r_class=1}] [{"text":"You are ","color":"gray"},{"text":"BRAWLER","bold":true,"color":"dark_gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=2}] [{"text":"You are ","color":"gray"},{"text":"ALCHEMIST","bold":true,"color":"dark_gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=3}] [{"text":"You are ","color":"gray"},{"text":"WARPER","bold":true,"color":"dark_gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=4}] [{"text":"You are ","color":"gray"},{"text":"MEDIC","bold":true,"color":"dark_gray"}]

tellraw @a[tag=playing,team=gladiator,scores={g_class=1}] [{"text":"You are ","color":"#ba666a"},{"text":"ATHLETE","bold":true,"color":"red"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=2}] [{"text":"You are ","color":"#ba666a"},{"text":"LOCATOR","bold":true,"color":"red"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=3}] [{"text":"You are ","color":"#ba666a"},{"text":"TRAPPER","bold":true,"color":"red"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=4}] [{"text":"You are ","color":"#ba666a"},{"text":"ARBALIST","bold":true,"color":"red"}]

tellraw @a[tag=playing,team=sneaker,scores={r_class=1}] [{"text":"Info: ","color":"gold"},{"text":"The Brawler can stun gladiators by punching.","italic":true,"color":"gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=2}] [{"text":"Info: ","color":"gold"},{"text":"The Alchemist can throw smoke grenades to blind gladiators.","italic":true,"color":"gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=3}] [{"text":"Info: ","color":"gold"},{"text":"The Warper can teleport back to their position three seconds ago.","italic":true,"color":"gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=4}] [{"text":"Info: ","color":"gold"},{"text":"The Medic can revive caught runners by crouching where they died.","italic":true,"color":"gray"}]

tellraw @a[tag=playing,team=gladiator,scores={g_class=1}] [{"text":"Info: ","color":"gold"},{"text":"The Athlete has a shorter dash cooldown.","italic":true,"color":"#ba666a"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=2}] [{"text":"Info: ","color":"gold"},{"text":"The Locator gets a compass that points to the nearest runner at the time of use.","italic":true,"color":"#ba666a"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=3}] [{"text":"Info: ","color":"gold"},{"text":"The Trapper starts with two runner traps. Trapper will receive an additional one for each band that is stepped on, up to two traps in total. The runners will receive slowness and glowing when activating a trap. The Trapper class can warp to triggered traps.","italic":true,"color":"#ba666a"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=4}] [{"text":"Info: ","color":"gold"},{"text":"The Arbalist starts with a preloaded crossbow that can be shot up to five times.","italic":true,"color":"#ba666a"}]
scoreboard players set @a warp_cooldown 0
scoreboard players set @a stun_timer 0
scoreboard players operation $time timer = $time set_timer
bossbar remove time_till_end
scoreboard players set $time time_till_end -1
execute if score $number mode matches 1 run scoreboard objectives setdisplay sidebar points
scoreboard players reset @a throw_trident
stopsound @a[tag=playing]

scoreboard objectives remove adv_backdoor
scoreboard objectives add adv_backdoor dummy

scoreboard objectives remove adv_kill_trap
scoreboard objectives add adv_kill_trap dummy

scoreboard objectives remove adv_near_glad
scoreboard objectives add adv_near_glad dummy
scoreboard players set @a[tag=playing] adv_near_glad 0

scoreboard objectives remove adv_blocks_run
scoreboard objectives add adv_blocks_run minecraft.custom:minecraft.sprint_one_cm