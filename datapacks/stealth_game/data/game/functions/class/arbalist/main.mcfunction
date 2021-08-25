execute as @a[team=gladiator,scores={arbalist_arrow=1..,g_class=4},nbt={Inventory:[{id:"minecraft:crossbow",tag:{Damage:1}}]}] run function game:class/arbalist/shoot
kill @e[type=arrow,nbt={inGround:1b}]
execute as @a[team=gladiator,scores={arbalist_arrow=1..,g_class=4}] at @s unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:crossbow"}]}] run function game:class/arbalist/get_crossbow
execute as @a[team=gladiator,scores={g_class=4}] run title @s actionbar [{"text":"Arrow Count: ","color":"red"},{"score":{"objective":"arbalist_arrow","name":"@s"}}]
