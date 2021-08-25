scoreboard players operation $highscore lobby_minigame = $score lobby_minigame
tellraw @s {"text":"You have now have the Realm highscore!","color":"green"}
playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0.75
playsound minecraft:block.bell.use master @s ~ ~ ~ 1 1
tag @s add score_on_sign
tag @a[x=57,y=73,z=7,distance=..17,gamemode=adventure,scores={lobby_trident=1..}] add name_on_sign
team join green @a[tag=name_on_sign]
setblock 1 1 1 air
execute as @s at @s run setblock 1 1 1 oak_sign{Text1:'[{"text":"Realm Highscore: ","color":"gold"},{"score":{"objective":"highscore","name":"@p[tag=score_on_sign]"},"color":"yellow"}]'}
setblock 2 2 2 air
execute as @s at @s run setblock 2 2 2 oak_sign{Text1:'[{"text":"Held by: ","color":"dark_green"},{"selector":"@a[tag=name_on_sign]"}]'}
tag @s remove score_on_sign
execute as @a[tag=name_on_sign] at @s run function general:rank
tag @a remove name_on_sign

data modify entity @e[tag=highscore_nameplate,type=area_effect_cloud,limit=1] CustomName set from block 1 1 1 Text1
data modify entity @e[tag=get_highscore_name,type=area_effect_cloud,limit=1] CustomName set from block 2 2 2 Text1
