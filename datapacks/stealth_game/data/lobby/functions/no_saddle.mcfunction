item replace entity @s horse.saddle with minecraft:saddle{CustomModelData:1,display:{Name:'{"text":" "}'}}
clear @a minecraft:saddle
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:saddle"}}]
return 1