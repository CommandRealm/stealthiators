clear @s minecraft:crossbow
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:crossbow"}}]
item replace entity @a[tag=playing,scores={g_class=4},team=gladiator] hotbar.3 with minecraft:crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,display:{Name:'{"text":"Loaded Crossbow","color":"red","italic":false}'},HideFlags:63} 1
return 1