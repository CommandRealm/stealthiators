scoreboard players reset @s right_click
clear @s carrot_on_a_stick{CustomModelData:6}
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}}]
data remove block 0 0 0 Items[]
data modify block 0 0 0 Items[] set value {id:"minecraft:compass",Count:1b,tag:{LodestoneTracked:0b,LodestoneDimension:"minecraft:overworld",LodestonePos:{X:0,Y:0,Z:0},display:{Name:'[{"translate":"Pointing to a runner\'s location at time of use.","color":"gold","italic":false}]'}}}
execute store result block 0 0 0 Items[0].tag.LodestonePos.X int 1 run data get entity @p[tag=playing,team=sneaker,gamemode=adventure] Pos[0]
execute store result block 0 0 0 Items[0].tag.LodestonePos.Y int 1 run data get entity @p[tag=playing,team=sneaker,gamemode=adventure] Pos[1]
execute store result block 0 0 0 Items[0].tag.LodestonePos.Z int 1 run data get entity @p[tag=playing,team=sneaker,gamemode=adventure] Pos[2]
loot replace entity @s hotbar.3 1 mine 0 0 0 stone{drop_contents:true}
scoreboard players set @s locator 700
# tellraw @p[tag=playing,team=sneaker,gamemode=adventure] {"translate":"The gladiator has tracked your location! Reposition yourself!","color":"dark_red"}
# execute as @p[tag=playing,team=sneaker,gamemode=adventure] at @s run playsound minecraft:entity.zombie.death master @s ~ ~ ~ 1 0
# playsound minecraft:block.iron_trapdoor.close master @s ~ ~ ~ 100 2