execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:snow",tag:{CustomModelData:1}}}] at @s run function game:class/trapper/set_trap
execute as @a[gamemode=adventure,tag=playing,team=sneaker] at @s if entity @e[type=minecraft:area_effect_cloud,distance=..2,tag=trap] run function game:class/trapper/trigger_trap
execute if entity @e[type=minecraft:area_effect_cloud,tag=trap_tp] run function game:class/trapper/possible_tp
execute unless entity @e[type=minecraft:area_effect_cloud,tag=trap_tp] run clear @a[scores={g_class=3},team=gladiator] minecraft:carrot_on_a_stick{CustomModelData:7}
execute as @e[type=minecraft:item,limit=1,nbt={Item:{id:"minecraft:snow"}}] at @s run data modify entity @s PickupDelay set value 100000

# particle on traps
execute as @e[type=minecraft:area_effect_cloud,tag=trap] at @s run particle minecraft:mycelium ~ ~ ~ 0 0 0 0 1 force @a
return 1