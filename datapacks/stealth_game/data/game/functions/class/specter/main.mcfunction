# called when a player is the specter


execute as @a[tag=playing,team=gladiator,scores={g_class=5}] at @s unless score @s specter_cooldown matches 1.. unless data entity @s Inventory[{Slot:3b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:19}}] run function game:class/specter/get_item

# using the ability
execute as @a[tag=playing,team=gladiator,scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:19}}}] at @s run function game:class/specter/use_ability

# if there is a cooldown
execute if entity @a[tag=playing,team=gladiator,scores={specter_cooldown=1..}] run function game:class/specter/cooldown