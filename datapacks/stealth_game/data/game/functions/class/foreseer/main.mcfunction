### main foreseer function
# giving the bow
execute as @a[team=gladiator,tag=playing,scores={g_class=6}] at @s unless data entity @s Inventory[{Slot:3b,id:"minecraft:bow"}] run function game:class/foreseer/get_bow
# giving the arrow
execute as @a[team=gladiator,tag=playing,scores={g_class=6}] at @s unless score @s foreseer_cool matches 1.. unless data entity @s Inventory[{Slot:8b,id:"minecraft:spectral_arrow"}] run function game:class/foreseer/get_arrow

# cooldown
execute if entity @a[team=gladiator,tag=playing,scores={g_class=6,foreseer_cool=1..}] run function game:class/foreseer/cooldown

# shoot bow
execute as @a[team=gladiator,tag=playing,scores={shoot_bow=1..}] at @s run function game:class/foreseer/shoot_bow

# when an arrow lands
execute as @e[type=spectral_arrow,nbt={inGround:1b}] at @s run function game:class/foreseer/arrow_land