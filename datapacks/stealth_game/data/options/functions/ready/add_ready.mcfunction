setblock 24 68 -42 air
playsound minecraft:ui.button.click master @s
scoreboard players add $number auto_ready 1
execute if score $number auto_ready matches ..-1 run scoreboard players set $number auto_ready 1
execute if score $number auto_ready matches 2.. run scoreboard players set $number auto_ready 0


execute if score $number auto_ready matches 0 run setblock 24 68 -42 oak_wall_sign[facing=east]{Text1:'{"text":"Auto-ready after","color":"#b2caad","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"after games:","color":"#b2caad","bold":true}',Text3:'{"text":"Off","color":"red"}',Text4:'{"text":"<<<         >>>","color":"#91b0be","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:ready/click_ready"}}'}
execute if score $number auto_ready matches 1 run setblock 24 68 -42 oak_wall_sign[facing=east]{Text1:'{"text":"Auto-ready after","color":"#b2caad","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"after games:","color":"#b2caad","bold":true}',Text3:'[{"text":"On","color":"green"}]',Text4:'{"text":"<<<         >>>","color":"#91b0be","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:ready/click_ready"}}'}


particle minecraft:cloud 23 69.5 -42 0 0 0 0.05 10

kill @e[tag=display_ready]
execute if score $number auto_ready matches 0 run summon armor_stand 23 67.725 -42 {DisabledSlots:2039583,Tags:["display_ready","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}
execute if score $number auto_ready matches 1 run summon armor_stand 23 67.725 -42 {DisabledSlots:2039583,Tags:["display_ready","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}]}