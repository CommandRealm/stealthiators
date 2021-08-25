clear @s
effect clear @s
team join red
tellraw @a[tag=playing] [{"selector":"@s"},{"text":" has been revived!","color":"gold"}]
gamemode adventure @s
team join sneaker
effect give @s invisibility 1000000 255 true
effect give @s regeneration 100000 255 true
scoreboard players set @s r_class 0
tp @s ~ ~0.5 ~
tellraw @s {"text":"You have been revived! From this moment on, you have no class. Good luck!","color":"red"}
execute at @s run playsound minecraft:entity.zombie.infect master @s ~ ~ ~ 1000 0
effect give @s invisibility 100000 255 true