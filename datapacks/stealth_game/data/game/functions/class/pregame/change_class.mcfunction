execute if entity @s[team=sneaker,nbt={SelectedItemSlot:0}] run function game:class/pregame/select_brawler
execute if entity @s[team=sneaker,nbt={SelectedItemSlot:1}] run function game:class/pregame/select_alchemist
execute if entity @s[team=sneaker,nbt={SelectedItemSlot:2}] run function game:class/pregame/select_warper
execute if entity @s[team=sneaker,nbt={SelectedItemSlot:3}] run function game:class/pregame/select_medic

execute if entity @s[team=gladiator,nbt={SelectedItemSlot:0}] run function game:class/pregame/select_athlete
execute if entity @s[team=gladiator,nbt={SelectedItemSlot:1}] run function game:class/pregame/select_locator
execute if entity @s[team=gladiator,nbt={SelectedItemSlot:2}] run function game:class/pregame/select_trapper
execute if entity @s[team=gladiator,nbt={SelectedItemSlot:3}] run function game:class/pregame/select_arbalist


scoreboard players reset @s right_click