# called when a player is the specter


execute as @a[tag=playing,scores={g_class=5},team=gladiator] at @s unless score @s specter_cooldown matches 1.. unless data entity @s Inventory[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:19},Slot:3b}] run function game:class/specter/get_item

# using the ability
execute as @a[tag=playing,scores={right_click=1..},team=gladiator,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:19},Count:1b}}] at @s run function game:class/specter/use_ability

# if there is a cooldown
execute if entity @a[tag=playing,scores={specter_cooldown=1..},team=gladiator] run function game:class/specter/cooldown
return 1