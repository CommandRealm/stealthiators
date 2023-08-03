setblock 26 68 -38 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number infection 1
execute if score $number infection matches ..-1 run scoreboard players set $number infection 1
execute if score $number infection matches 2.. run scoreboard players set $number infection 0


execute if score $number infection matches 0 run setblock 26 68 -38 oak_wall_sign[facing=east]{front_text:{messages:['{"text":"Runners swap","color":"#a06a3e","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"team on death:","color":"#a06a3e","bold":true}', '{"text":"Off","color":"red"}', '{"text":"<<<         >>>","color":"#91b0be","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:infection/click_infection"}}'], has_glowing_text: false, color: "black"}}
execute if score $number infection matches 1 run setblock 26 68 -38 oak_wall_sign[facing=east]{front_text:{messages:['{"text":"Runners swap","color":"#a06a3e","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"team on death:","color":"#a06a3e","bold":true}', '{"text":"On","color":"green"}', '{"text":"<<<         >>>","color":"#91b0be","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:infection/click_infection"}}'], has_glowing_text: false, color: "black"}}

particle minecraft:cloud 25 69.5 -38 0 0 0 0.05 10

kill @e[tag=display_infection]
execute if score $number infection matches 0 run summon armor_stand 25 67.725 -38 {DisabledSlots:2039583,Tags:["display_infection","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b}]}
execute if score $number infection matches 1 run summon armor_stand 25 67.725 -38 {DisabledSlots:2039583,Tags:["display_infection","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:cyan_glazed_terracotta",Count:1b}]}