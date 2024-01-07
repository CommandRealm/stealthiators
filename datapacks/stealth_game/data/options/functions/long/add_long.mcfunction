setblock 28 67 -53 minecraft:air
playsound minecraft:ui.button.click master @s





setblock 28 67 -53 minecraft:oak_wall_sign[facing=south]{front_text:{messages:['{"text":"Long width","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}','{"text":"segments:","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $auto generation matches 1 run function options:invalid_generation"}}','{"score":{"objective":"custom_gen","name":"$long"},"color":"gray"}','{"text":"<<<         >>>","color":"#91b0be","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $auto generation matches 0 at @s anchored eyes if score $game state matches 0 run function options:long/click_long"}}'],has_glowing_text:0b,color:"black"}}


particle minecraft:cloud 28 68.5 -54 0 0 0 0.05 10

kill @e[tag=display_long]
summon minecraft:armor_stand 28 66.625 -54 {DisabledSlots:2039583,Tags:["display_long","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:chiseled_quartz_block",Count:1b}]}
return 1