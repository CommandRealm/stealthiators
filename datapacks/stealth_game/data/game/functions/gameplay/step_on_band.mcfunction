execute if block ~ 125 ~ diamond_block as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=mark_band] run scoreboard players add $number band_number 1
execute if block ~ 125 ~ diamond_block as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=mark_band] run tellraw @a[tag=playing] [{"translate":"A runner has reached band ","color":"red"},{"translate":"#","bold":true,"color":"dark_red"},{"score":{"objective":"band_number","name":"$number"},"color":"dark_red","bold":true}]
execute if block ~ 125 ~ diamond_block as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=mark_band] as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100000 0
execute if block ~ 125 ~ diamond_block as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=mark_band] at @s run fill ~ 125 ~ ~68 125 ~-4 stone replace diamond_block
scoreboard players operation $correct_band band_number = $number band_number 
scoreboard players add $correct_band band_number 2
clear @a[team=gladiator] carrot_on_a_stick{CustomModelData:5}
execute as @a[team=gladiator,scores={g_class=3,drop_trap=1..}] at @s run give @s snow{CustomModelData:1,display:{Name:'{"translate":"Trap","color":"dark_red","italic":false}'},HideFlags:63}
scoreboard players remove @a[team=gladiator,scores={g_class=3,drop_trap=1..}] drop_trap 1
