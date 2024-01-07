clear @s
effect clear @s
team join red
tellraw @a[tag=playing] [{"selector":"@s"},{"text":" has been revived! ","color":"gold"},{"text":"They are now ","color":"gray"},{"text":"soul","color":"red"},{"text":"-","color":"gray"},{"text":"linked","color":"red"},{"text":" to ","color":"gray"},{"selector":"@a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..},team=sneaker]"}]
gamemode adventure @s
team join sneaker
effect give @s minecraft:invisibility 1000000 255 true
effect give @s minecraft:regeneration 100000 255 true
scoreboard players set @s r_class 0
tp @s ~ ~0.5 ~
tellraw @s {"text":"You have been revived! From this moment on, you have no class. Good luck!","color":"red"}
execute at @s run playsound minecraft:entity.zombie.infect master @s ~ ~ ~ 1000 0
effect give @s minecraft:invisibility 100000 255 true



# giving us the tag so the medic who revived us can get points if we win
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=1},team=sneaker] at @s run tag @s add revived_by_1
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=2},team=sneaker] at @s run tag @s add revived_by_2
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=3},team=sneaker] at @s run tag @s add revived_by_3
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=4},team=sneaker] at @s run tag @s add revived_by_4
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=5},team=sneaker] at @s run tag @s add revived_by_5
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=6},team=sneaker] at @s run tag @s add revived_by_6
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=7},team=sneaker] at @s run tag @s add revived_by_7
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=8},team=sneaker] at @s run tag @s add revived_by_8
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=9},team=sneaker] at @s run tag @s add revived_by_9
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=10},team=sneaker] at @s run tag @s add revived_by_10

execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=11},team=sneaker] at @s run tag @s add revived_by_11
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=12},team=sneaker] at @s run tag @s add revived_by_12
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=13},team=sneaker] at @s run tag @s add revived_by_13
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=14},team=sneaker] at @s run tag @s add revived_by_14
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=15},team=sneaker] at @s run tag @s add revived_by_15
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=16},team=sneaker] at @s run tag @s add revived_by_16
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=17},team=sneaker] at @s run tag @s add revived_by_17
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=18},team=sneaker] at @s run tag @s add revived_by_18
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=19},team=sneaker] at @s run tag @s add revived_by_19
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=20},team=sneaker] at @s run tag @s add revived_by_20

execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=21},team=sneaker] at @s run tag @s add revived_by_21
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=22},team=sneaker] at @s run tag @s add revived_by_22
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=23},team=sneaker] at @s run tag @s add revived_by_23
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=24},team=sneaker] at @s run tag @s add revived_by_24
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=25},team=sneaker] at @s run tag @s add revived_by_25
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=26},team=sneaker] at @s run tag @s add revived_by_26
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=27},team=sneaker] at @s run tag @s add revived_by_27
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=28},team=sneaker] at @s run tag @s add revived_by_28
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=29},team=sneaker] at @s run tag @s add revived_by_29
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=30},team=sneaker] at @s run tag @s add revived_by_30

execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=31},team=sneaker] at @s run tag @s add revived_by_31
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=32},team=sneaker] at @s run tag @s add revived_by_32
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=33},team=sneaker] at @s run tag @s add revived_by_33
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=34},team=sneaker] at @s run tag @s add revived_by_34
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=35},team=sneaker] at @s run tag @s add revived_by_35
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=36},team=sneaker] at @s run tag @s add revived_by_36
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=37},team=sneaker] at @s run tag @s add revived_by_37
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=38},team=sneaker] at @s run tag @s add revived_by_38
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=39},team=sneaker] at @s run tag @s add revived_by_39
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=40},team=sneaker] at @s run tag @s add revived_by_40

execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=41},team=sneaker] at @s run tag @s add revived_by_41
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=42},team=sneaker] at @s run tag @s add revived_by_42
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=43},team=sneaker] at @s run tag @s add revived_by_43
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=44},team=sneaker] at @s run tag @s add revived_by_44
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=45},team=sneaker] at @s run tag @s add revived_by_45
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=46},team=sneaker] at @s run tag @s add revived_by_46
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=47},team=sneaker] at @s run tag @s add revived_by_47
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=48},team=sneaker] at @s run tag @s add revived_by_48
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=49},team=sneaker] at @s run tag @s add revived_by_49
execute if entity @a[gamemode=adventure,distance=..2,tag=playing,tag=using_revive,scores={r_class=4,revive_crouch=1..,runner_id=50},team=sneaker] at @s run tag @s add revived_by_50

return 1