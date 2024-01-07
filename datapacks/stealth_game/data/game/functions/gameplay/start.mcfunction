team join sneaker @a[tag=playing]
scoreboard players set $players number 0
execute as @a[tag=playing] at @s run scoreboard players add $players number 1
scoreboard players operation $g_left gladiators = $number gladiators
execute if score $number gladiators matches 0 run function game:gameplay/auto_gladiators
execute if score $number mode matches 0 run function game:gameplay/select_gladiators
execute if score $number mode matches 1 run function game:gameplay/rotation/select_gladiator
execute unless entity @a[tag=playing,team=gladiator] run team join sneaker @r[tag=playing]
effect give @a[tag=playing] minecraft:regeneration 100000 255 true
effect give @a[team=sneaker] minecraft:invisibility 10000 255 true
effect give @a[team=gladiator] minecraft:resistance 10000 2 true
gamemode adventure @a[tag=playing]
execute if score $round game matches 1 run title @a[tag=playing] subtitle [{"text":""}]
execute if score $round game matches 1 run title @a[tag=playing] title [{"text":""}]
execute if score $round game matches 1 if score $number mode matches 1 run title @a[tag=playing] title [{"text":"Round ","color":"#b4ae8f","bold":true},{"text":"1","color":"#d1c48a","bold":true}]
clear @a[tag=playing]
kill @e[type=minecraft:trident,x=1000,y=66,z=0,distance=..500]
kill @e[type=minecraft:snowball]
title @a[tag=playing] times 5 60 5
tp @a[distance=1..,team=sneaker] 1021 152 -35 0 0
tp @a[distance=1..,team=gladiator] 1021 151 75 180 0
effect clear @a[tag=playing] minecraft:blindness
effect clear @a[tag=playing] minecraft:levitation
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
scoreboard players set @a[team=gladiator] dash_cooldown 200
scoreboard players reset @a door_cooldown
scoreboard players reset @a blind_cooldown
scoreboard players reset @a locator
scoreboard players reset @a display_cooldown
scoreboard players set $time time_till_end -1
fill 1019 151 -22 1023 157 -22 minecraft:iron_bars replace minecraft:air
team modify sneaker seeFriendlyInvisibles false
team modify gladiator seeFriendlyInvisibles false
forceload remove 2340 127 1980 -21
forceload add 1070 341 920 100
forceload add 1070 99 920 -91
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:trident"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:snowball"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:snow"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:item_frame"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:painting"}}]
kill @e[type=minecraft:arrow]
scoreboard objectives remove runner_id
scoreboard objectives add runner_id dummy
tag @a remove used_revive
tag @a remove using_revive
scoreboard players set $id runner_id 0
execute as @a[tag=playing,sort=random,team=sneaker] at @s run function game:gameplay/generate_id

effect give @a[team=gladiator] minecraft:invisibility 100 255 true
function game:gameplay/start_round

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


# removing revive tags
tag @a remove revived_by_1
tag @a remove revived_by_2
tag @a remove revived_by_3
tag @a remove revived_by_4
tag @a remove revived_by_5
tag @a remove revived_by_6
tag @a remove revived_by_7
tag @a remove revived_by_8
tag @a remove revived_by_9

tag @a remove revived_by_10
tag @a remove revived_by_11
tag @a remove revived_by_12
tag @a remove revived_by_13
tag @a remove revived_by_14
tag @a remove revived_by_15
tag @a remove revived_by_16
tag @a remove revived_by_17
tag @a remove revived_by_18
tag @a remove revived_by_19

tag @a remove revived_by_20
tag @a remove revived_by_21
tag @a remove revived_by_22
tag @a remove revived_by_23
tag @a remove revived_by_24
tag @a remove revived_by_25
tag @a remove revived_by_26
tag @a remove revived_by_27
tag @a remove revived_by_28
tag @a remove revived_by_29

tag @a remove revived_by_30
tag @a remove revived_by_31
tag @a remove revived_by_32
tag @a remove revived_by_33
tag @a remove revived_by_34
tag @a remove revived_by_35
tag @a remove revived_by_36
tag @a remove revived_by_37
tag @a remove revived_by_38
tag @a remove revived_by_39

tag @a remove revived_by_40
tag @a remove revived_by_41
tag @a remove revived_by_42
tag @a remove revived_by_43
tag @a remove revived_by_44
tag @a remove revived_by_45
tag @a remove revived_by_46
tag @a remove revived_by_47
tag @a remove revived_by_48
tag @a remove revived_by_49
tag @a remove revived_by_50

return 1