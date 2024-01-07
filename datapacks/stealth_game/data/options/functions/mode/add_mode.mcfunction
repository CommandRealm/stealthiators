setblock 29 68 -32 minecraft:air
playsound minecraft:ui.button.click master @s
scoreboard players add $number mode 1
execute if score $number mode matches 2.. run scoreboard players set $number mode 0
execute if score $number mode matches ..-1 run scoreboard players set $number mode 1

execute if score $number mode matches 0 run setblock 29 68 -32 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}','{"text":"Mode:","color":"#3a005f","bold":true}','{"text":"Classic","color":"yellow"}','{"text":"<<<         >>>","color":"#91b0be","bold":true,"clickEvent":{"action":"run_command","value":"/execute at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'],has_glowing_text:0b,color:"black"}}
execute if score $number mode matches 1 run setblock 29 68 -32 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}','{"text":"Mode:","color":"#3a005f","bold":true}','{"text":"Rotation","color":"yellow"}','{"text":"<<<         >>>","color":"#91b0be","bold":true,"clickEvent":{"action":"run_command","value":"/execute at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'],has_glowing_text:0b,color:"black"}}


particle minecraft:cloud 28 69.5 -32 0 0 0 0.05 10

kill @e[tag=display_mode]
execute if score $number mode matches 0 run summon minecraft:armor_stand 28 69.325 -32 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{},{},{}]}
execute if score $number mode matches 1 run summon minecraft:armor_stand 28 67.825 -32 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4},Count:1b}]}
return 1