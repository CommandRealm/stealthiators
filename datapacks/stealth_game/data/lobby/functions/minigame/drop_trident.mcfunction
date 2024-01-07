scoreboard players reset @s drop_trident
kill @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:trident"}}]
function lobby:minigame/get_trident
return 1