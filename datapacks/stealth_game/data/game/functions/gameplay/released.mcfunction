
tag @a[tag=playing,scores={sel_r_class=7},team=sneaker] add using_random
tag @a[tag=playing,scores={sel_g_class=7},team=gladiator] add using_random
team join dark_gray @a[tag=using_random,team=sneaker]
team join red @a[tag=using_random,team=gladiator]
tellraw @a[tag=playing] [{"text":"Players using ","color":"gold"},{"text":"Random Class"},{"text":": ","color":"gray"},{"selector":"@a[tag=playing,tag=using_random]"}]
execute as @a[tag=playing,scores={sel_r_class=7}] at @s run function game:gameplay/random_r_class
execute as @a[tag=playing,scores={sel_g_class=7}] at @s run function game:gameplay/random_g_class
team join sneaker @a[tag=using_random,team=dark_gray]
team join gladiator @a[tag=using_random,team=red]
tag @a remove using_random

clear @a[tag=playing] carrot_on_a_stick
title @a[tag=playing,team=sneaker] subtitle [{"text":"Sneak to the other end of the map.","color":"dark_gray","italic":true}]
title @a[tag=playing,team=gladiator] subtitle [{"text":"Stop the runners from reaching the end of the map.","color":"gold","italic":true}]
give @a[team=gladiator] trident{display:{Name:'{"text":"Trident","color":"#9c9558","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:loyalty",lvl:4}],HideFlags:63}
# give @a[team=gladiator] carrot_on_a_stick{CustomModelData:1,display:{Name:'{"text":"Dash","color":"#9dfff5","italic":false}'}}
item replace entity @a[team=sneaker,scores={r_class=2}] hotbar.0 with snowball{HideFlags:63,display:{Name:'[{"text":"Smoke Bomb","color":"#6c6c6c","italic":false}]',Lore:['[{"text":"Throw at a gladiator to blind them.","color":"dark_gray"}]']}}
item replace entity @a[team=sneaker,scores={r_class=5}] hotbar.0 with snowball{CustomModelData:1,HideFlags:63,display:{Name:'[{"text":"Fake Boots","color":"gold","italic":false}]',Lore:['[{"text":"Throw to summon fake boots.","color":"dark_gray"}]']}}
item replace entity @a[tag=playing,team=gladiator,scores={g_class=2}] hotbar.3 with carrot_on_a_stick{CustomModelData:6,display:{Name:'[{"text":"Click to see the location of the nearest runner.","color":"#b1a370","italic":false}]'}}
execute as @a[tag=playing] at @s run playsound minecraft:custom.whoosh master @s ~ ~ ~ 100000 1
execute as @a[tag=playing] at @s run playsound minecraft:custom.whoosh master @s ~ ~ ~ 100000 0
execute as @a[tag=playing] at @s run playsound minecraft:custom.whoosh master @s ~ ~ ~ 100000 0.75
team modify sneaker seeFriendlyInvisibles true
team modify gladiator seeFriendlyInvisibles true
effect clear @a[team=gladiator] invisibility
effect give @a[team=gladiator] strength 1000000 0 true
item replace entity @a[team=gladiator,tag=playing,scores={g_class=3}] hotbar.3 with snow{CustomModelData:1,display:{Name:'{"text":"Trap","color":"dark_red","italic":false}'},HideFlags:63} 2

# arbalist arrow count
execute store result score @a[team=gladiator,tag=playing,scores={g_class=4}] arbalist_arrow if entity @a[tag=playing,team=sneaker]
scoreboard players add @a[team=gladiator,tag=playing,scores={g_class=4}] arbalist_arrow 1
scoreboard players set @a[team=gladiator,tag=playing,scores={g_class=4,arbalist_arrow=11..}] arbalist_arrow 10

scoreboard players set @a[tag=playing,team=sneaker,scores={r_class=3}] warp_cooldown 100
scoreboard players set @a[tag=playing,team=sneaker,scores={r_class=4}] revives 2
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

scoreboard players set @a[scores={r_class=2}] alchemist_limit 2
tellraw @a[scores={r_class=2},tag=playing,team=sneaker] [{"text":"You have ","color":"gray"},{"text":"2","color":"gold","bold":true},{"text":" smoke bombs","color":"dark_gray"},{"text":" remaining.","color":"gray"}]

scoreboard players set @a[scores={r_class=6}] jump_level 0


execute as @r[team=sneaker,scores={r_class=1}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"text":"Brawler","color":"dark_gray","bold":true}]'}
execute as @r[team=sneaker,scores={r_class=2}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"text":"Alchemist","color":"dark_gray","bold":true}]'}
execute as @r[team=sneaker,scores={r_class=3}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"text":"Warper","color":"dark_gray","bold":true}]'}
execute as @r[team=sneaker,scores={r_class=4}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"text":"Medic","color":"dark_gray","bold":true}]'}
execute as @r[team=sneaker,scores={r_class=5}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"text":"Puppeteer","color":"dark_gray","bold":true}]'}
execute as @r[team=sneaker,scores={r_class=6}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"text":"Jumper","color":"dark_gray","bold":true}]'}

execute as @r[team=gladiator,scores={g_class=1}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"text":"Athlete","color":"red","bold":true}]'}
execute as @r[team=gladiator,scores={g_class=2}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"text":"Locator","color":"red","bold":true}]'}
execute as @r[team=gladiator,scores={g_class=3}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"text":"Trapper","color":"red","bold":true}]'}
execute as @r[team=gladiator,scores={g_class=4}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"text":"Arbalist","color":"red","bold":true}]'}
execute as @r[team=gladiator,scores={g_class=5}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"text":"Specter","color":"red","bold":true}]'}
execute as @r[team=gladiator,scores={g_class=6}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"text":"Foreseer","color":"red","bold":true}]'}

tellraw @a[tag=playing] [{"text":"Runner classes in use: ","color":"gray"},{"selector":"@e[type=area_effect_cloud,tag=runner_class]"}]
tellraw @a[tag=playing] [{"text":"Gladiator classes in use: ","color":"#ba666a"},{"selector":"@e[type=area_effect_cloud,tag=glad_class]"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=1}] [{"text":"You are ","color":"gray"},{"text":"BRAWLER","bold":true,"color":"dark_gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=2}] [{"text":"You are ","color":"gray"},{"text":"ALCHEMIST","bold":true,"color":"dark_gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=3}] [{"text":"You are ","color":"gray"},{"text":"WARPER","bold":true,"color":"dark_gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=4}] [{"text":"You are ","color":"gray"},{"text":"MEDIC","bold":true,"color":"dark_gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=5}] [{"text":"You are ","color":"gray"},{"text":"PUPPETEER","bold":true,"color":"dark_gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=6}] [{"text":"You are ","color":"gray"},{"text":"JUMPER","bold":true,"color":"dark_gray"}]

tellraw @a[tag=playing,team=gladiator,scores={g_class=1}] [{"text":"You are ","color":"#ba666a"},{"text":"ATHLETE","bold":true,"color":"red"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=2}] [{"text":"You are ","color":"#ba666a"},{"text":"LOCATOR","bold":true,"color":"red"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=3}] [{"text":"You are ","color":"#ba666a"},{"text":"TRAPPER","bold":true,"color":"red"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=4}] [{"text":"You are ","color":"#ba666a"},{"text":"ARBALIST","bold":true,"color":"red"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=5}] [{"text":"You are ","color":"#ba666a"},{"text":"SPECTRE","bold":true,"color":"red"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=6}] [{"text":"You are ","color":"#ba666a"},{"text":"FORESEER","bold":true,"color":"red"}]

tellraw @a[tag=playing,team=sneaker,scores={r_class=1}] [{"text":"Info: ","color":"gold"},{"text":"The Brawler can stun gladiators by punching.","italic":true,"color":"gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=2}] [{"text":"Info: ","color":"gold"},{"text":"The Alchemist can throw smoke bombs to blind gladiators. You are limited to two smoke bombs.","italic":true,"color":"gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=3}] [{"text":"Info: ","color":"gold"},{"text":"The Warper can teleport back to their position five seconds ago.","italic":true,"color":"gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=4}] [{"text":"Info: ","color":"gold"},{"text":"The Medic can revive up to two caught runners by crouching where they died.","italic":true,"color":"gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=5}] [{"text":"Info: ","color":"gold"},{"text":"The Puppeteer can throw a projectile that summons a fake pair of boots. It will stun any gladiator that punches it.","italic":true,"color":"gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=6}] [{"text":"Info: ","color":"gold"},{"text":"The Jumper can charge up their next jump by crouching.","italic":true,"color":"gray"}]

tellraw @a[tag=playing,team=gladiator,scores={g_class=1}] [{"text":"Info: ","color":"gold"},{"text":"The Athlete has a shorter dash cooldown.","italic":true,"color":"#ba666a"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=2}] [{"text":"Info: ","color":"gold"},{"text":"The Locator gets a compass that points to the nearest runner at the time of use.","italic":true,"color":"#ba666a"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=3}] [{"text":"Info: ","color":"gold"},{"text":"The Trapper starts with two runner traps. Trapper will receive an additional one for each band that is stepped on, up to two traps in total. The runners will receive slowness and glowing when activating a trap. The Trapper class can warp to triggered traps.","italic":true,"color":"#ba666a"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=4}] [{"text":"Info: ","color":"gold"},{"text":"The Arbalist starts with a preloaded crossbow.","italic":true,"color":"#ba666a"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=5}] [{"text":"Info: ","color":"gold"},{"text":"The Specter can go invisible periodically.","italic":true,"color":"#ba666a"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=6}] [{"text":"Info: ","color":"gold"},{"text":"The Foreseer is equipped with a bow which highlights runners nearby grounded arrows.","italic":true,"color":"#ba666a"}]
kill @e[type=area_effect_cloud,tag=runner_class]
kill @e[type=area_effect_cloud,tag=glad_class]