replaceitem entity @s horse.saddle saddle{CustomModelData:1,display:{Name:'{"text":" "}'}}
clear @a saddle
kill @e[type=item,nbt={Item:{id:"minecraft:saddle"}}]