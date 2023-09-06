
tag @a[tag=playing,scores={sel_r_class=7},team=sneaker] add using_random
tag @a[tag=playing,scores={sel_g_class=7},team=gladiator] add using_random
team join dark_gray @a[tag=using_random,team=sneaker]
team join red @a[tag=using_random,team=gladiator]
tellraw @a[tag=playing] [{"translate":"Players using ","color":"gold"},{"translate":"Random Class"},{"translate":": ","color":"gray"},{"selector":"@a[tag=playing,tag=using_random]"}]
execute as @a[tag=playing,scores={sel_r_class=7}] at @s run function game:gameplay/random_r_class
execute as @a[tag=playing,scores={sel_g_class=7}] at @s run function game:gameplay/random_g_class
team join sneaker @a[tag=using_random,team=dark_gray]
team join gladiator @a[tag=using_random,team=red]
tag @a remove using_random

clear @a[tag=playing] carrot_on_a_stick
title @a[tag=playing,team=sneaker] subtitle [{"translate":"Sneak to the other end of the map.","color":"dark_gray","italic":true}]
title @a[tag=playing,team=gladiator] subtitle [{"translate":"Stop the runners from reaching the end of the map.","color":"gold","italic":true}]
give @a[team=gladiator] trident{display:{Name:'{"translate":"Trident","color":"#9c9558","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:loyalty",lvl:4}],HideFlags:63}
# give @a[team=gladiator] carrot_on_a_stick{CustomModelData:1,display:{Name:'{"translate":"Dash","color":"#9dfff5","italic":false}'}}
item replace entity @a[team=sneaker,scores={r_class=2}] hotbar.0 with snowball{HideFlags:63,display:{Name:'[{"translate":"Smoke Bomb","color":"#6c6c6c","italic":false}]',Lore:['[{"translate":"Throw at a gladiator to blind them.","color":"dark_gray"}]']}}
item replace entity @a[team=sneaker,scores={r_class=5}] hotbar.0 with snowball{CustomModelData:1,HideFlags:63,display:{Name:'[{"translate":"Fake Boots","color":"gold","italic":false}]',Lore:['[{"translate":"Throw to summon fake boots.","color":"dark_gray"}]']}}
item replace entity @a[tag=playing,team=gladiator,scores={g_class=2}] hotbar.3 with carrot_on_a_stick{CustomModelData:6,display:{Name:'[{"translate":"Click to see the location of the nearest runner.","color":"#b1a370","italic":false}]'}}
execute as @a[tag=playing] at @s run playsound minecraft:custom.whoosh master @s ~ ~ ~ 100000 1
execute as @a[tag=playing] at @s run playsound minecraft:custom.whoosh master @s ~ ~ ~ 100000 0
execute as @a[tag=playing] at @s run playsound minecraft:custom.whoosh master @s ~ ~ ~ 100000 0.75
team modify sneaker seeFriendlyInvisibles true
team modify gladiator seeFriendlyInvisibles true
effect clear @a[team=gladiator] invisibility
effect give @a[team=gladiator] strength 1000000 0 true
item replace entity @a[team=gladiator,tag=playing,scores={g_class=3}] hotbar.3 with snow{CustomModelData:1,display:{Name:'{"translate":"Trap","color":"dark_red","italic":false}'},HideFlags:63} 2

# arbalist arrow count
execute store result score @a[team=gladiator,tag=playing,scores={g_class=4}] arbalist_arrow if entity @a[tag=playing,team=sneaker]
scoreboard players add @a[team=gladiator,tag=playing,scores={g_class=4}] arbalist_arrow 1
scoreboard players set @a[team=gladiator,tag=playing,scores={g_class=4,arbalist_arrow=11..}] arbalist_arrow 10

scoreboard players set @a[tag=playing,team=sneaker,scores={r_class=3}] warp_cooldown 100
scoreboard players set @a[tag=playing,team=sneaker,scores={r_class=4}] revives 2
scoreboard players set $time alternate_second 1
scoreboard players operation $time game_timer = $time set_timer
bossbar remove game_timer
bossbar add game_timer [{"translate":"Starting Game . . .","color":"red"}]
bossbar set game_timer color red
execute store result bossbar minecraft:game_timer max run scoreboard players get $time set_timer
execute store result bossbar minecraft:game_timer value run scoreboard players get $time set_timer
bossbar set minecraft:game_timer players @a[tag=playing]
scoreboard players reset @a drop_trap
scoreboard players set $time heartbeat 0
scoreboard objectives remove infect_timer
scoreboard objectives add infect_timer dummy

scoreboard players set @a[scores={r_class=2}] alchemist_limit 2
tellraw @a[scores={r_class=2},tag=playing,team=sneaker] [{"translate":"You have ","color":"gray"},{"translate":"2","color":"gold","bold":true},{"translate":" smoke bombs","color":"dark_gray"},{"translate":" remaining.","color":"gray"}]

scoreboard players set @a[scores={r_class=6}] jump_level 0


execute as @r[team=sneaker,scores={r_class=1}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"translate":"Brawler","color":"dark_gray","bold":true}]'}
execute as @r[team=sneaker,scores={r_class=2}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"translate":"Alchemist","color":"dark_gray","bold":true}]'}
execute as @r[team=sneaker,scores={r_class=3}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"translate":"Warper","color":"dark_gray","bold":true}]'}
execute as @r[team=sneaker,scores={r_class=4}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"translate":"Medic","color":"dark_gray","bold":true}]'}
execute as @r[team=sneaker,scores={r_class=5}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"translate":"Puppeteer","color":"dark_gray","bold":true}]'}
execute as @r[team=sneaker,scores={r_class=6}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["runner_class"],CustomName:'[{"translate":"Jumper","color":"dark_gray","bold":true}]'}

execute as @r[team=gladiator,scores={g_class=1}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"translate":"Athlete","color":"red","bold":true}]'}
execute as @r[team=gladiator,scores={g_class=2}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"translate":"Locator","color":"red","bold":true}]'}
execute as @r[team=gladiator,scores={g_class=3}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"translate":"Trapper","color":"red","bold":true}]'}
execute as @r[team=gladiator,scores={g_class=4}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"translate":"Arbalist","color":"red","bold":true}]'}
execute as @r[team=gladiator,scores={g_class=5}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"translate":"Specter","color":"red","bold":true}]'}
execute as @r[team=gladiator,scores={g_class=6}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["glad_class"],CustomName:'[{"translate":"Foreseer","color":"red","bold":true}]'}

tellraw @a[tag=playing] [{"translate":"Runner classes in use: ","color":"gray"},{"selector":"@e[type=area_effect_cloud,tag=runner_class]"}]
tellraw @a[tag=playing] [{"translate":"Gladiator classes in use: ","color":"#ba666a"},{"selector":"@e[type=area_effect_cloud,tag=glad_class]"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=1}] [{"translate":"You are ","color":"gray"},{"translate":"BRAWLER","bold":true,"color":"dark_gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=2}] [{"translate":"You are ","color":"gray"},{"translate":"ALCHEMIST","bold":true,"color":"dark_gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=3}] [{"translate":"You are ","color":"gray"},{"translate":"WARPER","bold":true,"color":"dark_gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=4}] [{"translate":"You are ","color":"gray"},{"translate":"MEDIC","bold":true,"color":"dark_gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=5}] [{"translate":"You are ","color":"gray"},{"translate":"PUPPETEER","bold":true,"color":"dark_gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=6}] [{"translate":"You are ","color":"gray"},{"translate":"JUMPER","bold":true,"color":"dark_gray"}]

tellraw @a[tag=playing,team=gladiator,scores={g_class=1}] [{"translate":"You are ","color":"#ba666a"},{"translate":"ATHLETE","bold":true,"color":"red"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=2}] [{"translate":"You are ","color":"#ba666a"},{"translate":"LOCATOR","bold":true,"color":"red"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=3}] [{"translate":"You are ","color":"#ba666a"},{"translate":"TRAPPER","bold":true,"color":"red"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=4}] [{"translate":"You are ","color":"#ba666a"},{"translate":"ARBALIST","bold":true,"color":"red"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=5}] [{"translate":"You are ","color":"#ba666a"},{"translate":"SPECTRE","bold":true,"color":"red"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=6}] [{"translate":"You are ","color":"#ba666a"},{"translate":"FORESEER","bold":true,"color":"red"}]

tellraw @a[tag=playing,team=sneaker,scores={r_class=1}] [{"translate":"Info: ","color":"gold"},{"translate":"The Brawler can stun gladiators by punching.","italic":true,"color":"gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=2}] [{"translate":"Info: ","color":"gold"},{"translate":"The Alchemist can throw smoke bombs to blind gladiators. You are limited to two smoke bombs.","italic":true,"color":"gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=3}] [{"translate":"Info: ","color":"gold"},{"translate":"The Warper can teleport back to their position five seconds ago.","italic":true,"color":"gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=4}] [{"translate":"Info: ","color":"gold"},{"translate":"The Medic can revive up to two caught runners by crouching where they died.","italic":true,"color":"gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=5}] [{"translate":"Info: ","color":"gold"},{"translate":"The Puppeteer can throw a projectile that summons a fake pair of boots. It will stun any gladiator that punches it.","italic":true,"color":"gray"}]
tellraw @a[tag=playing,team=sneaker,scores={r_class=6}] [{"translate":"Info: ","color":"gold"},{"translate":"The Jumper can charge up their next jump by crouching.","italic":true,"color":"gray"}]

tellraw @a[tag=playing,team=gladiator,scores={g_class=1}] [{"translate":"Info: ","color":"gold"},{"translate":"The Athlete has a shorter dash cooldown.","italic":true,"color":"#ba666a"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=2}] [{"translate":"Info: ","color":"gold"},{"translate":"The Locator gets a compass that points to the nearest runner at the time of use.","italic":true,"color":"#ba666a"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=3}] [{"translate":"Info: ","color":"gold"},{"translate":"The Trapper starts with two runner traps. Trapper will receive an additional one for each band that is stepped on, up to two traps in total. The runners will receive slowness and glowing when activating a trap. The Trapper class can warp to triggered traps.","italic":true,"color":"#ba666a"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=4}] [{"translate":"Info: ","color":"gold"},{"translate":"The Arbalist starts with a preloaded crossbow.","italic":true,"color":"#ba666a"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=5}] [{"translate":"Info: ","color":"gold"},{"translate":"The Specter can go invisible periodically.","italic":true,"color":"#ba666a"}]
tellraw @a[tag=playing,team=gladiator,scores={g_class=6}] [{"translate":"Info: ","color":"gold"},{"translate":"The Foreseer is equipped with a bow which highlights runners nearby grounded arrows.","italic":true,"color":"#ba666a"}]
kill @e[type=area_effect_cloud,tag=runner_class]
kill @e[type=area_effect_cloud,tag=glad_class]