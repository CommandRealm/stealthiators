execute as @a[scores={r_class=4,revive_crouch=1..},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run function game:class/medic/tags
execute if entity @s[tag=revive_1] as @a[tag=playing,team=dead,scores={runner_id=1}] run function game:class/medic/revived
execute if entity @s[tag=revive_2] as @a[tag=playing,team=dead,scores={runner_id=2}] run function game:class/medic/revived
execute if entity @s[tag=revive_3] as @a[tag=playing,team=dead,scores={runner_id=3}] run function game:class/medic/revived
execute if entity @s[tag=revive_4] as @a[tag=playing,team=dead,scores={runner_id=4}] run function game:class/medic/revived
execute if entity @s[tag=revive_5] as @a[tag=playing,team=dead,scores={runner_id=5}] run function game:class/medic/revived
execute if entity @s[tag=revive_6] as @a[tag=playing,team=dead,scores={runner_id=6}] run function game:class/medic/revived
execute if entity @s[tag=revive_7] as @a[tag=playing,team=dead,scores={runner_id=7}] run function game:class/medic/revived
execute if entity @s[tag=revive_8] as @a[tag=playing,team=dead,scores={runner_id=8}] run function game:class/medic/revived
execute if entity @s[tag=revive_9] as @a[tag=playing,team=dead,scores={runner_id=9}] run function game:class/medic/revived
execute if entity @s[tag=revive_10] as @a[tag=playing,team=dead,scores={runner_id=10}] run function game:class/medic/revived
execute if entity @s[tag=revive_11] as @a[tag=playing,team=dead,scores={runner_id=11}] run function game:class/medic/revived
execute as @a[tag=playing] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1000 1.5
playsound minecraft:item.totem.use master @a ~ ~ ~ 10 2
kill @s