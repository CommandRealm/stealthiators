execute if block ~ 125 ~ minecraft:diamond_block as @e[type=minecraft:area_effect_cloud,tag=mark_band,sort=nearest,limit=1] run scoreboard players add $number band_number 1
execute if block ~ 125 ~ minecraft:diamond_block as @e[type=minecraft:area_effect_cloud,tag=mark_band,sort=nearest,limit=1] run tellraw @a[tag=playing] [{"text":"A runner has reached band ","color":"red"},{"text":"#","bold":true,"color":"dark_red"},{"score":{"objective":"band_number","name":"$number"},"color":"dark_red","bold":true}]
execute if block ~ 125 ~ minecraft:diamond_block as @e[type=minecraft:area_effect_cloud,tag=mark_band,sort=nearest,limit=1] as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100000 0
execute if block ~ 125 ~ minecraft:diamond_block as @e[type=minecraft:area_effect_cloud,tag=mark_band,sort=nearest,limit=1] at @s run fill ~ 125 ~ ~68 125 ~-4 minecraft:stone replace minecraft:diamond_block
scoreboard players operation $correct_band band_number = $number band_number
scoreboard players add $correct_band band_number 2
clear @a[team=gladiator] minecraft:carrot_on_a_stick{CustomModelData:5}
execute as @a[scores={g_class=3,drop_trap=1..},team=gladiator] at @s run give @s minecraft:snow{CustomModelData:1,display:{Name:'{"text":"Trap","color":"dark_red","italic":false}'},HideFlags:63}
scoreboard players remove @a[scores={g_class=3,drop_trap=1..},team=gladiator] drop_trap 1

return 1