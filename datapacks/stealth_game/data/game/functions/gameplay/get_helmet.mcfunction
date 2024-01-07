kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
clear @s minecraft:carrot_on_a_stick{CustomModelData:4}
item replace entity @s armor.head with minecraft:carrot_on_a_stick{CustomModelData:4,display:{Name:'{"text":"Helmet","color":"red","italic":false}'},AttributeModifiers:[{Name:"minecraft:generic.attack_damage",AttributeName:"minecraft:generic.attack_damage",Amount:2.5d,UUID:[I;100,100,100,100]},{Name:"minecraft:generic.movement_speed",AttributeName:"minecraft:generic.movement_speed",Amount:0.005d,UUID:[I;200,200,200,200]}],HideFlags:63}
return 1