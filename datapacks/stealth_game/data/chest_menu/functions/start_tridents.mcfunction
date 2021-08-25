scoreboard players set @s screen 3
function chest_menu:clear

replaceitem entity @s enderchest.0 white_stained_glass{HideFlags:63,display:{Name:'[{"text":"None","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Default","color":"dark_gray","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=0}] enderchest.0 white_stained_glass{HideFlags:63,display:{Name:'[{"text":"None","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Default","color":"dark_gray","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


replaceitem entity @s enderchest.1 purple_concrete{HideFlags:63,display:{Name:'[{"text":"Portal","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=1}] enderchest.1 purple_concrete{HideFlags:63,display:{Name:'[{"text":"Portal","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.2 blue_concrete{HideFlags:63,display:{Name:'[{"text":"Rain","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=2}] enderchest.2 blue_concrete{HideFlags:63,display:{Name:'[{"text":"Rain","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.3 black_concrete{HideFlags:63,display:{Name:'[{"text":"Hearts","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=3}] enderchest.3 black_concrete{HideFlags:63,display:{Name:'[{"text":"Hearts","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.4 red_tulip{HideFlags:63,display:{Name:'[{"text":"Flowers","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=4}] enderchest.4 red_tulip{HideFlags:63,display:{Name:'[{"text":"Flowers","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.5 end_rod{HideFlags:63,display:{Name:'[{"text":"Dots","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=5}] enderchest.5 end_rod{HideFlags:63,display:{Name:'[{"text":"Dots","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.6 zombie_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Spawn Eggs","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=6}] enderchest.6 zombie_spawn_egg{HideFlags:63,display:{Name:'[{"text":"Spawn Eggs","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.7 flint_and_steel{HideFlags:63,display:{Name:'[{"text":"Fire","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=7}] enderchest.7 flint_and_steel{HideFlags:63,display:{Name:'[{"text":"Fire","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.8 emerald{HideFlags:63,display:{Name:'[{"text":"Emerald","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=8}] enderchest.8 emerald{HideFlags:63,display:{Name:'[{"text":"Emerald","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.9 white_concrete_powder{HideFlags:63,display:{Name:'[{"text":"Storm","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=9}] enderchest.9 white_concrete_powder{HideFlags:63,display:{Name:'[{"text":"Storm","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.10 ink_sac{HideFlags:63,display:{Name:'[{"text":"Ink","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=10}] enderchest.10 ink_sac{HideFlags:63,display:{Name:'[{"text":"Ink","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.11 potato{HideFlags:63,display:{Name:'[{"text":"Potatoes","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=11}] enderchest.11 potato{HideFlags:63,display:{Name:'[{"text":"Potatoes","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


replaceitem entity @s enderchest.12 iron_bars{bar:1,HideFlags:63,display:{Name:'[{"text":"Rainbow","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_t_12] enderchest.12 red_concrete{HideFlags:63,display:{Name:'[{"text":"Rainbow","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=12}] enderchest.12 red_concrete{HideFlags:63,display:{Name:'[{"text":"Rainbow","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.13 iron_bars{bar:2,HideFlags:63,display:{Name:'[{"text":"Weeeeee!","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_t_13] enderchest.13 cake{HideFlags:63,display:{Name:'[{"text":"Weeeeee!","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=13}] enderchest.13 cake{HideFlags:63,display:{Name:'[{"text":"Weeeeee!","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.14 iron_bars{bar:3,HideFlags:63,display:{Name:'[{"text":"Red Plus","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_t_14] enderchest.14 redstone{HideFlags:63,display:{Name:'[{"text":"Red Plus","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=14}] enderchest.14 redstone{HideFlags:63,display:{Name:'[{"text":"Red Plus","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.15 iron_bars{bar:4,HideFlags:63,display:{Name:'[{"text":"Flame Bar","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_t_15] enderchest.15 soul_lantern{HideFlags:63,display:{Name:'[{"text":"Flame Bar","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=15}] enderchest.15 soul_lantern{HideFlags:63,display:{Name:'[{"text":"Flame Bar","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


replaceitem entity @s enderchest.16 iron_bars{bar:5,HideFlags:63,display:{Name:'[{"text":"Melons","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_t_16] enderchest.16 melon_slice{HideFlags:63,display:{Name:'[{"text":"Melons","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=16}] enderchest.16 melon_slice{HideFlags:63,display:{Name:'[{"text":"Melons","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.17 iron_bars{bar:6,HideFlags:63,display:{Name:'[{"text":"Players","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_t_17] enderchest.17 player_head{HideFlags:63,display:{Name:'[{"text":"Players","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]']},clickable:1}
replaceitem entity @s[scores={trident_effects=17}] enderchest.17 player_head{SkullOwner:{Id:[I;-1972142756,-781105624,-1100736939,-2109347485],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2NkYTA0NzYyMzBlNjRhOTE3ZWMxY2YyNmRmOWI2OTZlMjcxNmVmZTk2YWUzNGI5NjY5YTZlYzUyNWJhYWEifX19"}]}},HideFlags:63,display:{Name:'[{"text":"Players","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}



replaceitem entity @s enderchest.18 barrier{HideFlags:63,display:{Name:'[{"text":"Back","color":"red","italic":false,"bold":true}]'},clickable:1}