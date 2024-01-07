### main foreseer function
# giving the bow
execute as @a[tag=playing,scores={g_class=6},team=gladiator] at @s unless data entity @s Inventory[{id:"minecraft:bow",Slot:3b}] run function game:class/foreseer/get_bow
# giving the arrow
execute as @a[tag=playing,scores={g_class=6},team=gladiator] at @s unless score @s foreseer_cool matches 1.. unless data entity @s Inventory[{id:"minecraft:spectral_arrow",Slot:8b}] run function game:class/foreseer/get_arrow

# cooldown
execute if entity @a[tag=playing,scores={g_class=6,foreseer_cool=1..},team=gladiator] run function game:class/foreseer/cooldown

# shoot bow
execute as @a[tag=playing,scores={shoot_bow=1..},team=gladiator] at @s run function game:class/foreseer/shoot_bow

# when an arrow lands
execute as @e[type=minecraft:spectral_arrow,nbt={inGround:1b}] at @s run function game:class/foreseer/arrow_land
return 1