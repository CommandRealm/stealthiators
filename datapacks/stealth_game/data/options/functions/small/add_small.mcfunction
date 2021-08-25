setblock 34 67 -55 air
playsound minecraft:ui.button.click master @s



setblock 34 67 -55 oak_wall_sign[facing=south]{Text1:'{"text":"Small width","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"segments:","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $auto generation matches 1 run function options:invalid_generation"}}',Text3:'{"score":{"objective":"custom_gen","name":"$small"},"color":"gray"}',Text4:'{"text":"<<<         >>>","color":"#91b0be","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $auto generation matches 0 as @s at @s anchored eyes if score $game state matches 0 run function options:small/click_small"}}'}


particle minecraft:cloud 34 68.5 -56 0 0 0 0.05 10

kill @e[tag=display_small]
summon armor_stand 34 66.625 -56 {DisabledSlots:2039583,Tags:["display_small","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:quartz_bricks",Count:1b}]}