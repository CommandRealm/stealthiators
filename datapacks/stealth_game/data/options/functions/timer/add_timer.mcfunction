setblock 25 68 -40 air
playsound minecraft:ui.button.click master @s
scoreboard players add $time set_timer 1200
execute if score $time set_timer matches ..1199 run scoreboard players set $time set_timer 12000
execute if score $time set_timer matches 12001.. run scoreboard players set $time set_timer 1200
scoreboard players operation $options set_timer = $time set_timer
scoreboard players operation $options set_timer /= $minute number

execute if score $options set_timer matches 1 run setblock 25 68 -40 oak_wall_sign[facing=east]{front_text:{messages:['{"translate":"","color":"#a06a3e","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"Timer:","color":"#70979a","bold":true}', '{"translate":"1 minute","color":"yellow"}', '{"translate":"<<<         >>>","color":"#91b0be","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:timer/click_timer"}}'], has_glowing_text: false, color: "black"}}
execute if score $options set_timer matches 2.. run setblock 25 68 -40 oak_wall_sign[facing=east]{front_text:{messages:['{"translate":"","color":"#a06a3e","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"Timer:","color":"#70979a","bold":true}', '[{"score":{"objective":"set_timer","name":"$options"},"color":"yellow"},{"translate":" minutes","color":"yellow"}]', '{"translate":"<<<         >>>","color":"#91b0be","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:timer/click_timer"}}'], has_glowing_text: false, color: "black"}}


particle minecraft:cloud 24 69.5 -40 0 0 0 0.05 10

kill @e[tag=display_timer]
execute if score $options set_timer matches 1..2 run summon armor_stand 24 67.725 -40 {DisabledSlots:2039583,Tags:["display_timer","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:blackstone",Count:1b}]}
execute if score $options set_timer matches 3..4 run summon armor_stand 24 67.725 -40 {DisabledSlots:2039583,Tags:["display_timer","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:polished_blackstone_bricks",Count:1b}]}
execute if score $options set_timer matches 5 run summon armor_stand 24 67.725 -40 {DisabledSlots:2039583,Tags:["display_timer","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:cracked_polished_blackstone_bricks",Count:1b}]}
execute if score $options set_timer matches 6..7 run summon armor_stand 24 67.725 -40 {DisabledSlots:2039583,Tags:["display_timer","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:polished_blackstone",Count:1b}]}
execute if score $options set_timer matches 8..9 run summon armor_stand 24 67.725 -40 {DisabledSlots:2039583,Tags:["display_timer","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:chiseled_polished_blackstone",Count:1b}]}
execute if score $options set_timer matches 10 run summon armor_stand 24 67.725 -40 {DisabledSlots:2039583,Tags:["display_timer","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:gilded_blackstone",Count:1b}]}
