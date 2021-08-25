execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:snow",tag:{CustomModelData:1}}}] at @s run function game:class/trapper/set_trap
execute as @a[team=sneaker,tag=playing,gamemode=adventure] at @s if entity @e[type=area_effect_cloud,tag=trap,distance=..2] run function game:class/trapper/trigger_trap
execute if entity @e[tag=trap_tp,type=area_effect_cloud] run function game:class/trapper/possible_tp
execute unless entity @e[tag=trap_tp,type=area_effect_cloud] run clear @a[team=gladiator,scores={g_class=3}] carrot_on_a_stick{CustomModelData:7}
execute as @e[type=item,nbt={Item:{id:"minecraft:snow"}},limit=1] at @s run data modify entity @s PickupDelay set value 100000