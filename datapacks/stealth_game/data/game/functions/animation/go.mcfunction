title @a[tag=playing] title [{"text":"Go!","color":"#f9f0a2","bold":true,"underlined":false}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.arrow.hit master @s ~ ~ ~ 1000 0
execute as @a[tag=playing] at @s run playsound minecraft:entity.arrow.hit master @s ~ ~ ~ 1000 0.75
execute as @a[tag=playing] at @s run playsound minecraft:entity.arrow.hit master @s ~ ~ ~ 1000 1
function game:gameplay/released
execute if score $number mode matches 1 run function game:gameplay/rotation/released
return 1