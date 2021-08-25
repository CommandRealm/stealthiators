execute if score $time game matches 601.. at @e[type=phantom,tag=die] run function game:animation/hanging_cage
execute if score $time game matches 601 run function game:animation/cage_drop
execute if score $time game matches 615 as @e[type=falling_block,tag=falling_platform] at @s run function game:animation/floor_disappear
execute if score $time game matches 603 as @e[type=phantom,tag=die] at @s run data modify entity @s Motion[2] set value -2.0
execute if score $time game matches 608 as @e[type=phantom,tag=die] at @s run data modify entity @s Motion[2] set value -2.0
execute if score $time game matches 613 as @e[type=phantom,tag=die] at @s run data modify entity @s Motion[2] set value -2.0
execute if score $time game matches 618 as @e[type=phantom,tag=die] at @s run data modify entity @s Motion[2] set value -2.0
execute if score $time game matches 623 as @e[type=phantom,tag=die] at @s run data modify entity @s Motion[2] set value -2.0
execute if score $time game matches 628 as @e[type=phantom,tag=die] at @s run data modify entity @s Motion[2] set value -2.0
execute if score $time game matches 633 as @e[type=phantom,tag=die] at @s run data modify entity @s Motion[2] set value -2.0
execute if score $time game matches 638 as @e[type=phantom,tag=die] at @s run data modify entity @s Motion[2] set value -2.0
execute if score $time game matches 643 as @e[type=phantom,tag=die] at @s run data modify entity @s Motion[2] set value -2.0
execute if score $time game matches 648 as @e[type=phantom,tag=die] at @s run data modify entity @s Motion[2] set value -2.0
execute if score $time game matches 653 as @e[type=phantom,tag=die] at @s run data merge entity @s {Motion:[0.0d,2.0d,-2.0d],Rotation:[180.0f,45.0f]}
execute if score $time game matches 658 as @e[type=phantom,tag=die] at @s run data merge entity @s {Motion:[0.0d,2.0d,-2.0d],Rotation:[180.0f,45.0f]}
execute if score $time game matches 663 as @e[type=phantom,tag=die] at @s run data merge entity @s {Motion:[0.0d,2.0d,-2.0d],Rotation:[180.0f,45.0f]}
execute if score $time game matches 668 as @e[type=phantom,tag=die] at @s run data merge entity @s {Motion:[0.0d,2.0d,-2.0d],Rotation:[180.0f,45.0f]}
execute if score $time game matches 673 as @e[type=phantom,tag=die] at @s run data merge entity @s {Motion:[0.0d,2.0d,-2.0d],Rotation:[180.0f,45.0f]}
execute if score $time game matches 678 as @e[type=phantom,tag=die] at @s run data merge entity @s {Motion:[0.0d,2.0d,-2.0d],Rotation:[180.0f,45.0f]}
execute if score $time game matches 680 run function game:animation/phantom_disappear
execute as @e[type=phantom,tag=die] at @s run data modify entity @s Fire set value 0