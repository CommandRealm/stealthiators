execute as @a[tag=playing,scores={right_click=1..},team=gladiator,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6},Count:1b}}] at @s run function game:class/locator/track
execute if entity @a[tag=playing,scores={locator=1..},team=gladiator] run function game:class/locator/cooldown
execute as @a[tag=playing,scores={g_class=2},team=gladiator] at @s unless entity @s[scores={locator=1..}] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}]}] run function game:class/locator/get_item
return 1