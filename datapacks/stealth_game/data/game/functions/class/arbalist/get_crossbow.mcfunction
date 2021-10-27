clear @s crossbow
kill @e[type=item,nbt={Item:{id:"minecraft:crossbow"}}]
item replace entity @a[team=gladiator,tag=playing,scores={g_class=4}] hotbar.3 with crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,display:{Name:'{"text":"Loaded Crossbow","color":"red","italic":false}'},HideFlags:63} 1