scoreboard players reset @s throw_snowball
scoreboard players set @s blind_cooldown 300

tag @e[type=snowball,nbt={HasBeenShot:0b},sort=nearest,limit=1] add alchemist_snowball
tag @e[type=snowball,tag=alchemist_snowball] add die


# removing limit
scoreboard players remove @s alchemist_limit 1

tellraw @s[scores={alchemist_limit=1..}] [{"translate":"You have ","color":"gray"},{"score":{"objective":"alchemist_limit","name":"@s"},"color":"gold","bold":true},{"translate":" smoke bombs","color":"dark_gray"},{"translate":" remaining.","color":"gray"}]
tellraw @s[scores={alchemist_limit=0}] [{"translate":"You are now out of ","color":"gray"},{"translate":"smoke bombs","color":"dark_gray"},{"translate":".","color":"gray"}]