tag @a remove got_placement
scoreboard objectives remove fake_points
scoreboard objectives add fake_points dummy
scoreboard players set $check_place fake_points 0
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
tellraw @a[tag=playing] {"text":"\n\n"}
tellraw @a [{"text":"Stealthiators","color":"dark_gray","bold":true},{"text":" Rotation Mode","color":"gold","bold":true}]
team join gold @a[tag=playing,scores={fake_points=0}]
execute as @a[tag=playing,scores={fake_points=0}] run tellraw @a [{"text":"\nVictor: ","color":"yellow"},{"selector":"@s"},{"text":" score: ","color":"gray"},{"score":{"objective":"points","name":"@s"}}]
advancement grant @a[tag=playing,scores={fake_points=0}] only minecraft:custom/win_on_rotation
team join dark_gray @a[tag=playing]
tag @a[tag=playing,scores={fake_points=0}] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[tag=playing,tag=!got_placement,scores={fake_points=0}] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"gray"},{"score":{"objective":"points","name":"@s"}}]
tag @a[tag=playing,scores={fake_points=0}] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[tag=playing,tag=!got_placement,scores={fake_points=0}] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"gray"},{"score":{"objective":"points","name":"@s"}}]
tag @a[tag=playing,scores={fake_points=0}] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[tag=playing,tag=!got_placement,scores={fake_points=0}] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"gray"},{"score":{"objective":"points","name":"@s"}}]
tag @a[tag=playing,scores={fake_points=0}] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[tag=playing,tag=!got_placement,scores={fake_points=0}] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"gray"},{"score":{"objective":"points","name":"@s"}}]
tag @a[tag=playing,scores={fake_points=0}] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[tag=playing,tag=!got_placement,scores={fake_points=0}] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"gray"},{"score":{"objective":"points","name":"@s"}}]
tag @a[tag=playing,scores={fake_points=0}] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[tag=playing,tag=!got_placement,scores={fake_points=0}] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"gray"},{"score":{"objective":"points","name":"@s"}}]
tag @a[tag=playing,scores={fake_points=0}] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[tag=playing,tag=!got_placement,scores={fake_points=0}] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"gray"},{"score":{"objective":"points","name":"@s"}}]
tag @a[tag=playing,scores={fake_points=0}] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[tag=playing,tag=!got_placement,scores={fake_points=0}] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"gray"},{"score":{"objective":"points","name":"@s"}}]
tag @a[tag=playing,scores={fake_points=0}] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[tag=playing,tag=!got_placement,scores={fake_points=0}] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"gray"},{"score":{"objective":"points","name":"@s"}}]
tag @a[tag=playing,scores={fake_points=0}] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[tag=playing,tag=!got_placement,scores={fake_points=0}] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"gray"},{"score":{"objective":"points","name":"@s"}}]
tag @a[tag=playing,scores={fake_points=0}] add got_placement
scoreboard players set $check_place fake_points -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points = @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_points > @s points
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_points -= $check_place fake_points
execute as @a[tag=playing,tag=!got_placement,scores={fake_points=0}] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"gray"},{"score":{"objective":"points","name":"@s"}}]
tag @a remove got_placement

tag @a[tag=playing] add potential_cosmetic
function end:players
return 1