scoreboard players add @s select_class 0
execute unless entity @s[scores={select_class=0}] run function lobby:class_selection/tree_2
scoreboard players set @s select_class 0
scoreboard players enable @s select_class
return 1