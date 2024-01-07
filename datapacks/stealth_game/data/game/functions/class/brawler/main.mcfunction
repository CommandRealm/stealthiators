execute as @a[tag=playing,scores={damage_dealt=1..,r_class=1},team=sneaker] at @s run function game:class/brawler/stun_punch
execute if entity @a[tag=playing,scores={stun_timer=1..},team=gladiator] run function game:class/brawler/cooldown
execute as @a[tag=playing,scores={r_class=1},team=sneaker] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_button",Slot:0b}]}] run function game:class/brawler/get_kb_item
execute as @a[tag=playing,scores={r_class=1},team=sneaker] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_button",Slot:1b}]}] run function game:class/brawler/get_kb_item
execute as @a[tag=playing,scores={r_class=1},team=sneaker] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_button",Slot:2b}]}] run function game:class/brawler/get_kb_item
execute as @a[tag=playing,scores={r_class=1},team=sneaker] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_button",Slot:3b}]}] run function game:class/brawler/get_kb_item
execute as @a[tag=playing,scores={r_class=1},team=sneaker] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_button",Slot:4b}]}] run function game:class/brawler/get_kb_item
execute as @a[tag=playing,scores={r_class=1},team=sneaker] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_button",Slot:5b}]}] run function game:class/brawler/get_kb_item
execute as @a[tag=playing,scores={r_class=1},team=sneaker] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_button",Slot:6b}]}] run function game:class/brawler/get_kb_item
execute as @a[tag=playing,scores={r_class=1},team=sneaker] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_button",Slot:7b}]}] run function game:class/brawler/get_kb_item
execute as @a[tag=playing,scores={r_class=1},team=sneaker] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_button",Slot:8b}]}] run function game:class/brawler/get_kb_item
return 1