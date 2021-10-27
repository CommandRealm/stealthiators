playsound minecraft:entity.vex.hurt master @s ~ ~ ~ 1 0
execute if entity @s[scores={select_class=1}] run function lobby:class_selection/r_1
execute if entity @s[scores={select_class=2}] run function lobby:class_selection/r_2
execute if entity @s[scores={select_class=3}] run function lobby:class_selection/r_3
execute if entity @s[scores={select_class=4}] run function lobby:class_selection/r_4
execute if entity @s[scores={select_class=5}] run function lobby:class_selection/g_1
execute if entity @s[scores={select_class=6}] run function lobby:class_selection/g_2
execute if entity @s[scores={select_class=7}] run function lobby:class_selection/g_3
execute if entity @s[scores={select_class=8}] run function lobby:class_selection/g_4

execute if entity @s[scores={select_class=9}] run function lobby:class_selection/r_r
execute if entity @s[scores={select_class=10}] run function lobby:class_selection/g_r

execute if entity @s[scores={select_class=11}] run function lobby:class_selection/r_5
execute if entity @s[scores={select_class=12}] run function lobby:class_selection/r_6
execute if entity @s[scores={select_class=13}] run function lobby:class_selection/g_5
execute if entity @s[scores={select_class=14}] run function lobby:class_selection/g_6