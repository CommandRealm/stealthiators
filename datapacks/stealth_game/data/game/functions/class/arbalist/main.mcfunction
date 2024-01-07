execute as @a[scores={arbalist_arrow=1..,g_class=4},team=gladiator,nbt={Inventory:[{id:"minecraft:crossbow",tag:{Damage:1}}]}] run function game:class/arbalist/shoot
kill @e[type=minecraft:arrow,nbt={inGround:1b}]
execute as @a[scores={arbalist_arrow=1..,g_class=4},team=gladiator] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:3b}]}] run function game:class/arbalist/get_crossbow
execute as @a[scores={g_class=4},team=gladiator] run title @s actionbar [{"text":"Arrow Count: ","color":"red"},{"score":{"objective":"arbalist_arrow","name":"@s"}}]


execute as @a[tag=playing,team=gladiator,advancements={game:arbalist_kill=true}] at @s run function game:class/arbalist/get_kill
return 1