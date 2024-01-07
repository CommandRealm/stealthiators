scoreboard players operation $highscore lobby_minigame = $score lobby_minigame
tellraw @s {"text":"You have now have the world highscore!","color":"green"}
playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0.75
playsound minecraft:block.bell.use master @s ~ ~ ~ 1 1
tag @s add score_on_sign
tag @a[gamemode=adventure,x=57,y=73,z=7,distance=..17,scores={lobby_trident=1..}] add name_on_sign
team join green @a[tag=name_on_sign]
setblock 1 1 1 minecraft:air
execute at @s run setblock 1 1 1 minecraft:oak_sign{front_text:{messages:['[{"text":"World Highscore: ","color":"gold"},{"score":{"objective":"highscore","name":"@p[tag=score_on_sign]"},"color":"yellow"}]','{"text":""}','{"text":""}','{"text":""}'],has_glowing_text:0b,color:"black"}}
setblock 2 2 2 minecraft:air
execute at @s run setblock 2 2 2 minecraft:oak_sign{front_text:{messages:['[{"text":"Held by: ","color":"dark_green"},{"selector":"@a[tag=name_on_sign]"}]','{"text":""}','{"text":""}','{"text":""}'],has_glowing_text:0b,color:"black"}}
tag @s remove score_on_sign
execute as @a[tag=name_on_sign] at @s run function general:rank
tag @a remove name_on_sign

data modify entity @e[type=minecraft:area_effect_cloud,tag=highscore_nameplate,limit=1] CustomName set from block 1 1 1 front_text.messages[0]
data modify entity @e[type=minecraft:area_effect_cloud,tag=get_highscore_name,limit=1] CustomName set from block 2 2 2 front_text.messages[0]

return 1