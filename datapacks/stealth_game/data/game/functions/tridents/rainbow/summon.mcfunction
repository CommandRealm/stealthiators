execute if entity @s[tag=!trident_summoned_purple,tag=trident_summoned_blue] run function game:tridents/rainbow/summon_purple
execute if entity @s[tag=!trident_summoned_blue,tag=trident_summoned_green] run function game:tridents/rainbow/summon_blue
execute if entity @s[tag=!trident_summoned_green,tag=trident_summoned_yellow] run function game:tridents/rainbow/summon_green
execute if entity @s[tag=!trident_summoned_yellow,tag=trident_summoned_orange] run function game:tridents/rainbow/summon_yellow
execute if entity @s[tag=!trident_summoned_orange,tag=trident_summoned_red] run function game:tridents/rainbow/summon_orange
execute if entity @s[tag=!trident_summoned_red,tag=!trident_summoned_recently] run function game:tridents/rainbow/summon_red
tag @s remove trident_summoned_recently

return 1