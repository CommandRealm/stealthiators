clear @s
effect clear @s
team join red
tellraw @a[tag=playing] [{"selector":"@s"},{"text":" has been revived! ","color":"gold"},{"text":"They are now ","color":"gray"},{"text":"soul","color":"red"},{"text":"-","color":"gray"},{"text":"linked","color":"red"},{"text":" to ","color":"gray"},{"selector":"@a[scores={r_class=4,revive_crouch=1..},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive]"}]
gamemode adventure @s
team join sneaker
effect give @s invisibility 1000000 255 true
effect give @s regeneration 100000 255 true
scoreboard players set @s r_class 0
tp @s ~ ~0.5 ~
tellraw @s {"text":"You have been revived! From this moment on, you have no class. Good luck!","color":"red"}
execute at @s run playsound minecraft:entity.zombie.infect master @s ~ ~ ~ 1000 0
effect give @s invisibility 100000 255 true



# giving us the tag so the medic who revived us can get points if we win
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=1},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_1
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=2},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_2
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=3},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_3
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=4},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_4
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=5},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_5
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=6},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_6
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=7},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_7
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=8},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_8
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=9},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_9
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=10},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_10

execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=11},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_11
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=12},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_12
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=13},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_13
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=14},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_14
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=15},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_15
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=16},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_16
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=17},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_17
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=18},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_18
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=19},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_19
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=20},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_20

execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=21},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_21
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=22},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_22
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=23},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_23
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=24},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_24
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=25},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_25
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=26},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_26
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=27},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_27
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=28},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_28
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=29},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_29
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=30},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_30

execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=31},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_31
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=32},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_32
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=33},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_33
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=34},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_34
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=35},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_35
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=36},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_36
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=37},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_37
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=38},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_38
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=39},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_39
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=40},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_40

execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=41},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_41
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=42},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_42
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=43},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_43
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=44},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_44
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=45},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_45
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=46},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_46
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=47},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_47
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=48},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_48
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=49},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_49
execute if entity @a[scores={r_class=4,revive_crouch=1..,runner_id=50},tag=playing,gamemode=adventure,team=sneaker,distance=..2,tag=using_revive] at @s run tag @s add revived_by_50
