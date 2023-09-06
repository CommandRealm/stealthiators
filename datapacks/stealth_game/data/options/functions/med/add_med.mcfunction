setblock 31 67 -54 air
playsound minecraft:ui.button.click master @s



setblock 31 67 -54 oak_wall_sign[facing=south]{front_text:{messages:['{"translate":"Medium width","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"segments:","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $auto generation matches 1 run function options:invalid_generation"}}', '{"score":{"objective":"custom_gen","name":"$med"},"color":"gray"}', '{"translate":"<<<         >>>","color":"#91b0be","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $auto generation matches 0 as @s at @s anchored eyes if score $game state matches 0 run function options:med/click_med"}}'], has_glowing_text: false, color: "black"}}


particle minecraft:cloud 31 68.5 -55 0 0 0 0.05 10

kill @e[tag=display_med]
summon armor_stand 31 66.625 -55 {DisabledSlots:2039583,Tags:["display_med","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:quartz_pillar",Count:1b}]}