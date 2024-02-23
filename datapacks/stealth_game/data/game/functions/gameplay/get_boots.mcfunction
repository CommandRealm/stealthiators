kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_boots"}}]
clear @s minecraft:iron_boots
item replace entity @s armor.feet with minecraft:iron_boots{AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Base:0,Name:"minecraft:generic.armor",UUID:[0.0d,0.0d,0.0d]}],display:{Name:'[{"text":"Boots","color":"gray","italic":false}]'},Unbreakable:1b}
execute unless score $time game matches 620 run playsound minecraft:block.note_block.flute master @a ~ ~ ~ 1 0
execute unless score $time game matches 600..620 run advancement grant @s only advancements:custom/barefoot_runner
return 1