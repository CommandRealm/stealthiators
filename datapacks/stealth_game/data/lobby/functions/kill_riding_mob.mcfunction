execute as @e[type=horse,sort=nearest,limit=1] at @s if entity @s[tag=rider_10] as @a[tag=rider_10] at @s run function lobby:remove_tags
execute as @e[type=horse,sort=nearest,limit=1] at @s if entity @s[tag=rider_9] as @a[tag=rider_9] at @s run function lobby:remove_tags
execute as @e[type=horse,sort=nearest,limit=1] at @s if entity @s[tag=rider_8] as @a[tag=rider_8] at @s run function lobby:remove_tags
execute as @e[type=horse,sort=nearest,limit=1] at @s if entity @s[tag=rider_7] as @a[tag=rider_7] at @s run function lobby:remove_tags
execute as @e[type=horse,sort=nearest,limit=1] at @s if entity @s[tag=rider_6] as @a[tag=rider_6] at @s run function lobby:remove_tags
execute as @e[type=horse,sort=nearest,limit=1] at @s if entity @s[tag=rider_5] as @a[tag=rider_5] at @s run function lobby:remove_tags
execute as @e[type=horse,sort=nearest,limit=1] at @s if entity @s[tag=rider_4] as @a[tag=rider_4] at @s run function lobby:remove_tags
execute as @e[type=horse,sort=nearest,limit=1] at @s if entity @s[tag=rider_3] as @a[tag=rider_3] at @s run function lobby:remove_tags
execute as @e[type=horse,sort=nearest,limit=1] at @s if entity @s[tag=rider_2] as @a[tag=rider_2] at @s run function lobby:remove_tags
execute as @e[type=horse,sort=nearest,limit=1] at @s if entity @s[tag=rider_1] as @a[tag=rider_1] at @s run function lobby:remove_tags
execute as @e[type=horse,sort=nearest,limit=1] at @s if entity @s[tag=rider_0] as @a[tag=rider_0] at @s run function lobby:remove_tags
tp @a[distance=..1] ~ ~.1 ~
execute as @e[type=horse,sort=nearest,limit=1] at @s run tag @s add kill_mob_soon

tag @e[tag=rideable_mob,sort=nearest,limit=1] add kill_mob_soon

tp @e[tag=kill_mob_soon] 0 0 0
kill @e[tag=kill_mob_soon]