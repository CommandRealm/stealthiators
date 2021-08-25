execute if entity @s[tag=rider_0] run tag @a[tag=rider_0] remove has_mob
execute if entity @s[tag=rider_1] run tag @a[tag=rider_1] remove has_mob
execute if entity @s[tag=rider_2] run tag @a[tag=rider_2] remove has_mob
execute if entity @s[tag=rider_3] run tag @a[tag=rider_3] remove has_mob
execute if entity @s[tag=rider_4] run tag @a[tag=rider_4] remove has_mob
execute if entity @s[tag=rider_5] run tag @a[tag=rider_5] remove has_mob
execute if entity @s[tag=rider_6] run tag @a[tag=rider_6] remove has_mob
execute if entity @s[tag=rider_7] run tag @a[tag=rider_7] remove has_mob
execute if entity @s[tag=rider_8] run tag @a[tag=rider_8] remove has_mob
execute if entity @s[tag=rider_9] run tag @a[tag=rider_9] remove has_mob
execute if entity @s[tag=rider_10] run tag @a[tag=rider_10] remove has_mob

execute if entity @s[tag=rider_0] run tag @a remove rider_0
execute if entity @s[tag=rider_1] run tag @a remove rider_1
execute if entity @s[tag=rider_2] run tag @a remove rider_2
execute if entity @s[tag=rider_3] run tag @a remove rider_3
execute if entity @s[tag=rider_4] run tag @a remove rider_4
execute if entity @s[tag=rider_5] run tag @a remove rider_5
execute if entity @s[tag=rider_6] run tag @a remove rider_6
execute if entity @s[tag=rider_7] run tag @a remove rider_7
execute if entity @s[tag=rider_8] run tag @a remove rider_8
execute if entity @s[tag=rider_9] run tag @a remove rider_9
execute if entity @s[tag=rider_10] run tag @a remove rider_10

execute if entity @s[tag=rider_0] run tp @e[tag=tp_riding_0] 0 0 0
execute if entity @s[tag=rider_1] run tp @e[tag=tp_riding_1] 0 0 0
execute if entity @s[tag=rider_2] run tp @e[tag=tp_riding_2] 0 0 0
execute if entity @s[tag=rider_3] run tp @e[tag=tp_riding_3] 0 0 0
execute if entity @s[tag=rider_4] run tp @e[tag=tp_riding_4] 0 0 0
execute if entity @s[tag=rider_5] run tp @e[tag=tp_riding_5] 0 0 0
execute if entity @s[tag=rider_6] run tp @e[tag=tp_riding_6] 0 0 0
execute if entity @s[tag=rider_7] run tp @e[tag=tp_riding_7] 0 0 0
execute if entity @s[tag=rider_8] run tp @e[tag=tp_riding_8] 0 0 0
execute if entity @s[tag=rider_9] run tp @e[tag=tp_riding_9] 0 0 0
execute if entity @s[tag=rider_10] run tp @e[tag=tp_riding_10] 0 0 0
execute if entity @s[tag=rider_0] run kill @e[tag=tp_riding_0]
execute if entity @s[tag=rider_1] run kill @e[tag=tp_riding_1]
execute if entity @s[tag=rider_2] run kill @e[tag=tp_riding_2]
execute if entity @s[tag=rider_3] run kill @e[tag=tp_riding_3]
execute if entity @s[tag=rider_4] run kill @e[tag=tp_riding_4]
execute if entity @s[tag=rider_5] run kill @e[tag=tp_riding_5]
execute if entity @s[tag=rider_6] run kill @e[tag=tp_riding_6]
execute if entity @s[tag=rider_7] run kill @e[tag=tp_riding_7]
execute if entity @s[tag=rider_8] run kill @e[tag=tp_riding_8]
execute if entity @s[tag=rider_9] run kill @e[tag=tp_riding_9]
execute if entity @s[tag=rider_10] run kill @e[tag=tp_riding_10]
execute if entity @s[tag=rider_0] run tp @e[type=horse,tag=rider_0] 0 0 0
execute if entity @s[tag=rider_1] run tp @e[type=horse,tag=rider_1] 0 0 0
execute if entity @s[tag=rider_2] run tp @e[type=horse,tag=rider_2] 0 0 0
execute if entity @s[tag=rider_3] run tp @e[type=horse,tag=rider_3] 0 0 0
execute if entity @s[tag=rider_4] run tp @e[type=horse,tag=rider_4] 0 0 0
execute if entity @s[tag=rider_5] run tp @e[type=horse,tag=rider_5] 0 0 0
execute if entity @s[tag=rider_6] run tp @e[type=horse,tag=rider_6] 0 0 0
execute if entity @s[tag=rider_7] run tp @e[type=horse,tag=rider_7] 0 0 0
execute if entity @s[tag=rider_8] run tp @e[type=horse,tag=rider_8] 0 0 0
execute if entity @s[tag=rider_9] run tp @e[type=horse,tag=rider_9] 0 0 0
execute if entity @s[tag=rider_10] run tp @e[type=horse,tag=rider_10] 0 0 0
execute if entity @s[tag=rider_0] run kill @e[type=horse,tag=rider_0]
execute if entity @s[tag=rider_1] run kill @e[type=horse,tag=rider_1]
execute if entity @s[tag=rider_2] run kill @e[type=horse,tag=rider_2]
execute if entity @s[tag=rider_3] run kill @e[type=horse,tag=rider_3]
execute if entity @s[tag=rider_4] run kill @e[type=horse,tag=rider_4]
execute if entity @s[tag=rider_5] run kill @e[type=horse,tag=rider_5]
execute if entity @s[tag=rider_6] run kill @e[type=horse,tag=rider_6]
execute if entity @s[tag=rider_7] run kill @e[type=horse,tag=rider_7]
execute if entity @s[tag=rider_8] run kill @e[type=horse,tag=rider_8]
execute if entity @s[tag=rider_9] run kill @e[type=horse,tag=rider_9]
execute if entity @s[tag=rider_10] run kill @e[type=horse,tag=rider_10]
tag @s remove has_mob
tag @s remove rider_10
tag @s remove rider_9
tag @s remove rider_8
tag @s remove rider_7
tag @s remove rider_6
tag @s remove rider_5
tag @s remove rider_4
tag @s remove rider_3
tag @s remove rider_2
tag @s remove rider_1
tag @s remove rider_0