scoreboard objectives setdisplay sidebar
scoreboard players reset @a drop_c_o_a_s
scoreboard players reset @a drop_trident
scoreboard players set $time cooldown -1
execute as @a[tag=playing] at @s run scoreboard players operation @s r_class = @s sel_r_class
execute as @a[tag=playing] at @s run scoreboard players operation @s g_class = @s sel_g_class
execute as @a[tag=playing,scores={sel_r_class=7}] at @s run function game:gameplay/random_r_class
execute as @a[tag=playing,scores={sel_g_class=7}] at @s run function game:gameplay/random_g_class
scoreboard objectives remove select_class
scoreboard objectives add select_class trigger
scoreboard players enable @a[tag=!playing] select_class
title @a[tag=playing] actionbar {"text":" "}
bossbar set lobby players @a[tag=!playing]
tag @a remove infected_gladiator
fill 987 125 13 1055 125 107 diamond_block replace minecraft:stone
fill 987 125 133 1055 125 317 diamond_block replace minecraft:stone


scoreboard players reset @a specter_cooldown
scoreboard players reset @a foreseer_cool
scoreboard players reset @a puppeteer_cool
scoreboard players reset @a shoot_bow
scoreboard players reset @a jump_charge
scoreboard players reset @a jump_level
scoreboard players reset @a jumper_jump

advancement revoke @a only game:hit_fake_boots
kill @e[type=stray,tag=fake_boots]