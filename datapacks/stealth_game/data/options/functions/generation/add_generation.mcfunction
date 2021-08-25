setblock 26 68 -36 air
playsound minecraft:ui.button.click master @s
scoreboard players add $auto generation 1
execute if score $auto generation matches ..-1 run scoreboard players set $auto generation 1
execute if score $auto generation matches 2.. run scoreboard players set $auto generation 0


execute if score $auto generation matches 1 run setblock 26 68 -36 oak_wall_sign[facing=east]{Text1:'{"text":"","color":"#cbc69c","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Generation:","color":"#4d834c","bold":true}',Text3:'{"text":"Auto","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"#91b0be","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:generation/click_generation"}}'}
execute if score $auto generation matches 0 run setblock 26 68 -36 oak_wall_sign[facing=east]{Text1:'{"text":"","color":"#cbc69c","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Generation:","color":"#4d834c","bold":true}',Text3:'{"text":"Custom","color":"yellow"}',Text4:'{"text":"<<<         >>>","color":"#91b0be","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:generation/click_generation"}}'}
execute if score $auto generation matches 0 run tellraw @s {"text":"You can change the specifics of generation to the right of this option.","color":"green"}

particle minecraft:cloud 25 69.5 -36 0 0 0 0.05 10

kill @e[tag=display_generation]
execute if score $auto generation matches 1 run summon armor_stand 25 67.725 -36 {DisabledSlots:2039583,Tags:["display_generation","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:jigsaw",Count:1b}]}
execute if score $auto generation matches 0 run summon armor_stand 25 67.725 -36 {DisabledSlots:2039583,Tags:["display_generation","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:beacon",Count:1b}]}