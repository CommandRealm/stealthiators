scoreboard players add @s revive_timer 1
execute store result score $duration revive_timer run data get entity @s Age 1
execute if score $duration revive_timer matches 81.. run data modify entity @s Age set value 80
tag @a[team=sneaker,gamemode=adventure,distance=..2,scores={r_class=4,revive_crouch=1..}] add using_revive
effect give @a[team=sneaker,gamemode=adventure,distance=..2,scores={r_class=4,revive_crouch=1..}] glowing 1 0 true
execute if entity @s[scores={revive_timer=160}] run function game:class/medic/revive
execute if entity @s[scores={revive_timer=1}] run function game:class/medic/update_actionbar
execute if entity @s[scores={revive_timer=20}] run function game:class/medic/update_actionbar
execute if entity @s[scores={revive_timer=40}] run function game:class/medic/update_actionbar
execute if entity @s[scores={revive_timer=60}] run function game:class/medic/update_actionbar
execute if entity @s[scores={revive_timer=80}] run function game:class/medic/update_actionbar
execute if entity @s[scores={revive_timer=100}] run function game:class/medic/update_actionbar
execute if entity @s[scores={revive_timer=120}] run function game:class/medic/update_actionbar
execute if entity @s[scores={revive_timer=140}] run function game:class/medic/update_actionbar
execute if entity @s[scores={revive_timer=160}] run function game:class/medic/update_actionbar
##execute if entity @s[scores={revive_timer=180}] run function game:class/medic/update_actionbar
##execute if entity @s[scores={revive_timer=200}] run function game:class/medic/update_actionbar

execute if score $number infection matches 1 run function game:class/medic/infection_reviving