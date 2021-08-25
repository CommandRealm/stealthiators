clear @a[tag=playing] carrot_on_a_stick
title @a[tag=playing,team=sneaker] subtitle [{"text":"Sneak to the other end of the map.","color":"dark_gray","italic":true}]
title @a[tag=playing,team=gladiator] subtitle [{"text":"Stop the runners from reaching the end of the map.","color":"gold","italic":true}]
give @a[team=gladiator] trident{display:{Name:'{"text":"Trident","color":"#9c9558","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:loyalty",lvl:4}],HideFlags:63}
give @a[team=gladiator] carrot_on_a_stick{CustomModelData:1,display:{Name:'{"text":"Dash","color":"#9dfff5","italic":false}'}}
replaceitem entity @a[team=sneaker,scores={r_class=2}] hotbar.0 snowball{HideFlags:63,display:{Name:'[{"text":"Smoke Bomb","color":"#6c6c6c","italic":false}]',Lore:['[{"text":"Throw at a gladiator to blind them.","color":"dark_gray"}]']}}
replaceitem entity @a[tag=playing,team=gladiator,scores={g_class=2}] hotbar.3 carrot_on_a_stick{CustomModelData:6,display:{Name:'[{"text":"Click to see the location of the nearest runner.","color":"#b1a370","italic":false}]'}}
execute as @a[tag=playing] at @s run playsound minecraft:custom.whoosh master @s ~ ~ ~ 100000 1
execute as @a[tag=playing] at @s run playsound minecraft:custom.whoosh master @s ~ ~ ~ 100000 0
execute as @a[tag=playing] at @s run playsound minecraft:custom.whoosh master @s ~ ~ ~ 100000 0.75
team modify sneaker seeFriendlyInvisibles true
team modify gladiator seeFriendlyInvisibles true
effect clear @a[team=gladiator] invisibility
effect give @a[team=gladiator] strength 1000000 0 true
replaceitem entity @a[team=gladiator,tag=playing,scores={g_class=3}] hotbar.3 snow{CustomModelData:1,display:{Name:'{"text":"Trap","color":"dark_red","italic":false}'},HideFlags:63} 2
scoreboard players set @a[team=gladiator,tag=playing,scores={g_class=4}] arbalist_arrow 5

scoreboard players set @a[tag=playing,team=sneaker,scores={r_class=3}] warp_cooldown 60
scoreboard players set $time alternate_second 1
scoreboard players operation $time game_timer = $time set_timer
bossbar remove game_timer
bossbar add game_timer [{"text":"Starting Game . . .","color":"red"}]
bossbar set game_timer color red
execute store result bossbar minecraft:game_timer max run scoreboard players get $time set_timer
execute store result bossbar minecraft:game_timer value run scoreboard players get $time set_timer
bossbar set minecraft:game_timer players @a[tag=playing]
scoreboard players reset @a drop_trap
scoreboard players set $time heartbeat 0
scoreboard objectives remove infect_timer
scoreboard objectives add infect_timer dummy


execute as @r[team=sneaker,scores={r_class=1}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"text":"Brawler","color":"dark_gray","bold":true}]'}
execute as @r[team=sneaker,scores={r_class=2}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"text":"Alchemist","color":"dark_gray","bold":true}]'}
execute as @r[team=sneaker,scores={r_class=3}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"text":"Warper","color":"dark_gray","bold":true}]'}
execute as @r[team=sneaker,scores={r_class=4}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"text":"Medic","color":"dark_gray","bold":true}]'}

execute as @r[team=gladiator,scores={g_class=1}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"text":"Athlete","color":"red","bold":true}]'}
execute as @r[team=gladiator,scores={g_class=2}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"text":"Locator","color":"red","bold":true}]'}
execute as @r[team=gladiator,scores={g_class=3}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"text":"Trapper","color":"red","bold":true}]'}
execute as @r[team=gladiator,scores={g_class=4}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"text":"Arbalist","color":"red","bold":true}]'}

tellraw @a[tag=playing] [{"text":"Runner classes in use: ","color":"gray"},{"selector":"@e[type=area_effect_cloud,tag=runner_class]"}]
tellraw @a[tag=playing] [{"text":"Gladiator classes in use: ","color":"#ba666a"},{"selector":"@e[type=area_effect_cloud,tag=glad_class]"}]

kill @e[type=area_effect_cloud,tag=runner_class]
kill @e[type=area_effect_cloud,tag=glad_class]