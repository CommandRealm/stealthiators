execute as @a[tag=playing,team=sneaker,scores={damage_dealt=1..,r_class=1}] at @s run function game:class/brawler/stun_punch
execute if entity @a[team=gladiator,tag=playing,scores={stun_timer=1..}] run function game:class/brawler/cooldown
execute as @a[team=sneaker,tag=playing,scores={r_class=1}] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:stick"}]}] run function game:class/brawler/get_kb_item
execute as @a[team=sneaker,tag=playing,scores={r_class=1}] at @s unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:stick"}]}] run function game:class/brawler/get_kb_item
execute as @a[team=sneaker,tag=playing,scores={r_class=1}] at @s unless entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:stick"}]}] run function game:class/brawler/get_kb_item
execute as @a[team=sneaker,tag=playing,scores={r_class=1}] at @s unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:stick"}]}] run function game:class/brawler/get_kb_item
execute as @a[team=sneaker,tag=playing,scores={r_class=1}] at @s unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:stick"}]}] run function game:class/brawler/get_kb_item
execute as @a[team=sneaker,tag=playing,scores={r_class=1}] at @s unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:stick"}]}] run function game:class/brawler/get_kb_item
execute as @a[team=sneaker,tag=playing,scores={r_class=1}] at @s unless entity @s[nbt={Inventory:[{Slot:6b,id:"minecraft:stick"}]}] run function game:class/brawler/get_kb_item
execute as @a[team=sneaker,tag=playing,scores={r_class=1}] at @s unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:stick"}]}] run function game:class/brawler/get_kb_item
execute as @a[team=sneaker,tag=playing,scores={r_class=1}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:stick"}]}] run function game:class/brawler/get_kb_item