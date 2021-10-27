clear @s carrot_on_a_stick{CustomModelData:6}
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}}]
item replace entity @a[tag=playing,team=gladiator,scores={g_class=2}] hotbar.3 with carrot_on_a_stick{CustomModelData:6,display:{Name:'[{"text":"Click to see the location of the nearest runner.","color":"#b1a370","italic":false}]'}}
playsound minecraft:block.iron_trapdoor.close master @s ~ ~ ~ 100 2