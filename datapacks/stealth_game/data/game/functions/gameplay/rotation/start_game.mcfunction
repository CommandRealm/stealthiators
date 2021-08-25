scoreboard objectives remove points
scoreboard objectives add points dummy
scoreboard players add @a[tag=playing] points 0
scoreboard players set $time side_animation 1
tag @a remove been_gladiator