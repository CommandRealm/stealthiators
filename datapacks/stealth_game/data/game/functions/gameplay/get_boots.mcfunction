kill @e[type=item,nbt={Item:{id:"minecraft:iron_boots"}}]
clear @s iron_boots
replaceitem entity @s armor.feet iron_boots{AttributeModifiers:[{AttributeName:"generic.armor",Base:0,Name:"generic.armor",UUID:[0.0d,0.0d,0.0d]}],display:{Name:'[{"text":"Boots","color":"gray","italic":false}]'}}
execute unless score $time game matches 620 run playsound minecraft:block.note_block.flute master @a ~ ~ ~ 1 0
execute unless score $time game matches 600..620 run advancement grant @s only minecraft:custom/barefoot_runner