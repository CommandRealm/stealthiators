scoreboard players set @s screen 4
function chest_menu:clear

item replace entity @s enderchest.0 with paper{HideFlags:63,display:{Name:'[{"translate":"Out","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=0}] enderchest.0 with paper{HideFlags:63,display:{Name:'[{"translate":"Out","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


item replace entity @s enderchest.1 with paper{HideFlags:63,display:{Name:'[{"translate":"Stopped","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=1}] enderchest.1 with paper{HideFlags:63,display:{Name:'[{"translate":"Stopped","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.2 with paper{HideFlags:63,display:{Name:'[{"translate":"Vanished","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=2}] enderchest.2 with paper{HideFlags:63,display:{Name:'[{"translate":"Vanished","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.3 with paper{HideFlags:63,display:{Name:'[{"translate":"Tutorial","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=3}] enderchest.3 with paper{HideFlags:63,display:{Name:'[{"translate":"Tutorial","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.4 with paper{HideFlags:63,display:{Name:'[{"translate":"Different Game","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=4}] enderchest.4 with paper{HideFlags:63,display:{Name:'[{"translate":"Different Game","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.5 with paper{HideFlags:63,display:{Name:'[{"translate":"Doomed","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=5}] enderchest.5 with paper{HideFlags:63,display:{Name:'[{"translate":"Doomed","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.6 with paper{HideFlags:63,display:{Name:'[{"translate":"Left","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=6}] enderchest.6 with paper{HideFlags:63,display:{Name:'[{"translate":"Left","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.7 with paper{HideFlags:63,display:{Name:'[{"translate":"Just Plain Died","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=7}] enderchest.7 with paper{HideFlags:63,display:{Name:'[{"translate":"Just Plain Died","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.8 with paper{HideFlags:63,display:{Name:'[{"translate":"Found","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=8}] enderchest.8 with paper{HideFlags:63,display:{Name:'[{"translate":"Found","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.9 with paper{HideFlags:63,display:{Name:'[{"translate":"Spectate","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=9}] enderchest.9 with paper{HideFlags:63,display:{Name:'[{"translate":"Spectate","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.10 with paper{HideFlags:63,display:{Name:'[{"translate":"Casualty","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=10}] enderchest.10 with paper{HideFlags:63,display:{Name:'[{"translate":"Casualty","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.11 with paper{HideFlags:63,display:{Name:'[{"translate":"Stand","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=11}] enderchest.11 with paper{HideFlags:63,display:{Name:'[{"translate":"Stand","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"dark_green","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


item replace entity @s enderchest.12 with iron_bars{bar:1,HideFlags:63,display:{Name:'[{"translate":"Hugged","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"dark_purple","italic":false}]','[{"translate":"Locked","color":"red","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_d_12] enderchest.12 with paper{HideFlags:63,display:{Name:'[{"translate":"Hugged","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=12}] enderchest.12 with paper{HideFlags:63,display:{Name:'[{"translate":"Hugged","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"dark_purple","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.13 with iron_bars{bar:2,HideFlags:63,display:{Name:'[{"translate":"Tried","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"dark_purple","italic":false}]','[{"translate":"Locked","color":"red","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_d_13] enderchest.13 with paper{HideFlags:63,display:{Name:'[{"translate":"Tried","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=13}] enderchest.13 with paper{HideFlags:63,display:{Name:'[{"translate":"Tried","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"dark_purple","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.14 with iron_bars{bar:3,HideFlags:63,display:{Name:'[{"translate":"Medic","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"dark_purple","italic":false}]','[{"translate":"Locked","color":"red","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_d_14] enderchest.14 with paper{HideFlags:63,display:{Name:'[{"translate":"Medic","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=14}] enderchest.14 with paper{HideFlags:63,display:{Name:'[{"translate":"Medic","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"dark_purple","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.15 with iron_bars{bar:4,HideFlags:63,display:{Name:'[{"translate":"Learned","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"dark_purple","italic":false}]','[{"translate":"Locked","color":"red","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_d_15] enderchest.15 with paper{HideFlags:63,display:{Name:'[{"translate":"Learned","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=15}] enderchest.15 with paper{HideFlags:63,display:{Name:'[{"translate":"Learned","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"dark_purple","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


item replace entity @s enderchest.16 with iron_bars{bar:5,HideFlags:63,display:{Name:'[{"translate":"Forgot","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"LEGENDARY","color":"gold","italic":false}]','[{"translate":"Locked","color":"red","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_d_16] enderchest.16 with paper{HideFlags:63,display:{Name:'[{"translate":"Forgot","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"LEGENDARY","color":"gold","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=16}] enderchest.16 with paper{HideFlags:63,display:{Name:'[{"translate":"Forgot","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"LEGENDARY","color":"gold","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

item replace entity @s enderchest.17 with iron_bars{bar:6,HideFlags:63,display:{Name:'[{"translate":"Lacked Stealth","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"LEGENDARY","color":"gold","italic":false}]','[{"translate":"Locked","color":"red","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_d_17] enderchest.17 with paper{HideFlags:63,display:{Name:'[{"translate":"Lacked Stealth","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"LEGENDARY","color":"gold","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=17}] enderchest.17 with paper{HideFlags:63,display:{Name:'[{"translate":"Lacked Stealth","color":"yellow","italic":false,"bold":true}]',Lore:['[{"translate":"LEGENDARY","color":"gold","italic":false}]','[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}



item replace entity @s enderchest.18 with barrier{HideFlags:63,display:{Name:'[{"translate":"Back","color":"red","italic":false,"bold":true}]'},clickable:1}