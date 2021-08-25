scoreboard players set @s screen 4
function chest_menu:clear

replaceitem entity @s enderchest.0 paper{HideFlags:63,display:{Name:'[{"text":"Out","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=0}] enderchest.0 paper{HideFlags:63,display:{Name:'[{"text":"Out","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


replaceitem entity @s enderchest.1 paper{HideFlags:63,display:{Name:'[{"text":"Stopped","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=1}] enderchest.1 paper{HideFlags:63,display:{Name:'[{"text":"Stopped","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.2 paper{HideFlags:63,display:{Name:'[{"text":"Vanished","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=2}] enderchest.2 paper{HideFlags:63,display:{Name:'[{"text":"Vanished","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.3 paper{HideFlags:63,display:{Name:'[{"text":"Tutorial","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=3}] enderchest.3 paper{HideFlags:63,display:{Name:'[{"text":"Tutorial","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.4 paper{HideFlags:63,display:{Name:'[{"text":"Different Game","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=4}] enderchest.4 paper{HideFlags:63,display:{Name:'[{"text":"Different Game","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.5 paper{HideFlags:63,display:{Name:'[{"text":"Doomed","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=5}] enderchest.5 paper{HideFlags:63,display:{Name:'[{"text":"Doomed","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.6 paper{HideFlags:63,display:{Name:'[{"text":"Left","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=6}] enderchest.6 paper{HideFlags:63,display:{Name:'[{"text":"Left","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.7 paper{HideFlags:63,display:{Name:'[{"text":"Just Plain Died","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=7}] enderchest.7 paper{HideFlags:63,display:{Name:'[{"text":"Just Plain Died","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.8 paper{HideFlags:63,display:{Name:'[{"text":"Found","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=8}] enderchest.8 paper{HideFlags:63,display:{Name:'[{"text":"Found","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.9 paper{HideFlags:63,display:{Name:'[{"text":"Spectate","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=9}] enderchest.9 paper{HideFlags:63,display:{Name:'[{"text":"Spectate","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.10 paper{HideFlags:63,display:{Name:'[{"text":"Casualty","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=10}] enderchest.10 paper{HideFlags:63,display:{Name:'[{"text":"Casualty","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.11 paper{HideFlags:63,display:{Name:'[{"text":"Stand","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=11}] enderchest.11 paper{HideFlags:63,display:{Name:'[{"text":"Stand","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"dark_green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


replaceitem entity @s enderchest.12 iron_bars{bar:1,HideFlags:63,display:{Name:'[{"text":"Hugged","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_d_12] enderchest.12 paper{HideFlags:63,display:{Name:'[{"text":"Hugged","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=12}] enderchest.12 paper{HideFlags:63,display:{Name:'[{"text":"Hugged","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.13 iron_bars{bar:2,HideFlags:63,display:{Name:'[{"text":"Tried","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_d_13] enderchest.13 paper{HideFlags:63,display:{Name:'[{"text":"Tried","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=13}] enderchest.13 paper{HideFlags:63,display:{Name:'[{"text":"Tried","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.14 iron_bars{bar:3,HideFlags:63,display:{Name:'[{"text":"Medic","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_d_14] enderchest.14 paper{HideFlags:63,display:{Name:'[{"text":"Medic","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=14}] enderchest.14 paper{HideFlags:63,display:{Name:'[{"text":"Medic","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.15 iron_bars{bar:4,HideFlags:63,display:{Name:'[{"text":"Learned","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_d_15] enderchest.15 paper{HideFlags:63,display:{Name:'[{"text":"Learned","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=15}] enderchest.15 paper{HideFlags:63,display:{Name:'[{"text":"Learned","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"dark_purple","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


replaceitem entity @s enderchest.16 iron_bars{bar:5,HideFlags:63,display:{Name:'[{"text":"Forgot","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_d_16] enderchest.16 paper{HideFlags:63,display:{Name:'[{"text":"Forgot","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=16}] enderchest.16 paper{HideFlags:63,display:{Name:'[{"text":"Forgot","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.17 iron_bars{bar:6,HideFlags:63,display:{Name:'[{"text":"Lacked Stealth","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Locked","color":"red","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_d_17] enderchest.17 paper{HideFlags:63,display:{Name:'[{"text":"Lacked Stealth","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]']},clickable:1}
replaceitem entity @s[scores={death_msg=17}] enderchest.17 paper{HideFlags:63,display:{Name:'[{"text":"Lacked Stealth","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"gold","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}



replaceitem entity @s enderchest.18 barrier{HideFlags:63,display:{Name:'[{"text":"Back","color":"red","italic":false,"bold":true}]'},clickable:1}