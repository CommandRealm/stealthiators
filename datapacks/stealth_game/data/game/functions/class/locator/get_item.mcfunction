clear @s minecraft:carrot_on_a_stick{CustomModelData:6}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}}]
item replace entity @a[tag=playing,scores={g_class=2},team=gladiator] hotbar.3 with minecraft:carrot_on_a_stick{CustomModelData:6,display:{Name:'[{"text":"Click to see the location of the nearest runner.","color":"#b1a370","italic":false}]'}}
playsound minecraft:block.iron_trapdoor.close master @s ~ ~ ~ 100 2
return 1