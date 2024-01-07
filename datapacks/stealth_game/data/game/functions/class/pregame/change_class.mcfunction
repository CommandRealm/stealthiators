execute if entity @s[team=sneaker,nbt={SelectedItemSlot:0}] run function game:class/pregame/select_brawler
execute if entity @s[team=sneaker,nbt={SelectedItemSlot:1}] run function game:class/pregame/select_alchemist
execute if entity @s[team=sneaker,nbt={SelectedItemSlot:2}] run function game:class/pregame/select_warper
execute if entity @s[team=sneaker,nbt={SelectedItemSlot:3}] run function game:class/pregame/select_medic
execute if entity @s[team=sneaker,nbt={SelectedItemSlot:4}] run function game:class/pregame/select_puppeteer
execute if entity @s[team=sneaker,nbt={SelectedItemSlot:5}] run function game:class/pregame/select_jumper
execute if entity @s[team=sneaker,nbt={SelectedItemSlot:6}] run function game:class/pregame/select_random_runner

execute if entity @s[team=gladiator,nbt={SelectedItemSlot:0}] run function game:class/pregame/select_athlete
execute if entity @s[team=gladiator,nbt={SelectedItemSlot:1}] run function game:class/pregame/select_locator
execute if entity @s[team=gladiator,nbt={SelectedItemSlot:2}] run function game:class/pregame/select_trapper
execute if entity @s[team=gladiator,nbt={SelectedItemSlot:3}] run function game:class/pregame/select_arbalist
execute if entity @s[team=gladiator,nbt={SelectedItemSlot:4}] run function game:class/pregame/select_specter
execute if entity @s[team=gladiator,nbt={SelectedItemSlot:5}] run function game:class/pregame/select_foreseer
execute if entity @s[team=gladiator,nbt={SelectedItemSlot:6}] run function game:class/pregame/select_random_gladiator

scoreboard players reset @s right_click
return 1