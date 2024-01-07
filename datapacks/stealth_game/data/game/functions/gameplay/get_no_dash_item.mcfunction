kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:1}}}]
clear @s minecraft:light_gray_stained_glass_pane{CustomModelData:1}
item replace entity @s hotbar.1 with minecraft:light_gray_stained_glass_pane{CustomModelData:1,display:{Name:'{"text":"","color":"#9dfff5","italic":false}'}}
return 1