scoreboard players set @s screen 7
function chest_menu:clear
replaceitem entity @s enderchest.10 iron_bars{bar:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Prefix","color":"dark_gray","italic":false,"bold":true}]',Lore:['[{"text":"Complete advancements to unlock.","color":"gray","italic":false}]']},clickable:1}
replaceitem entity @s[advancements={custom/unlock_prefix=true}] enderchest.10 name_tag{HideFlags:63,display:{Name:'[{"text":"Exclusive Prefix","color":"dark_gray","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]']},clickable:1}
replaceitem entity @s[advancements={custom/unlock_prefix=true},tag=prefix] enderchest.10 name_tag{HideFlags:63,display:{Name:'[{"text":"Exclusive Prefix","color":"dark_gray","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}


replaceitem entity @s enderchest.12 iron_bars{bar:2,HideFlags:63,display:{Name:'[{"text":"Exclusive Lobby Mount","color":"green","italic":false,"bold":true}]',Lore:['[{"text":"Complete advancements to unlock.","color":"dark_green","italic":false}]']},clickable:1}
replaceitem entity @s[advancements={custom/unlock_lobby_mount=true}] enderchest.12 saddle{HideFlags:63,display:{Name:'[{"text":"Exclusive Lobby Mount","color":"green","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]']},clickable:1}
replaceitem entity @s[advancements={custom/unlock_lobby_mount=true},scores={lobby_mount=18}] enderchest.12 saddle{HideFlags:63,display:{Name:'[{"text":"Exclusive Lobby Mount","color":"green","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}



replaceitem entity @s enderchest.14 iron_bars{bar:3,HideFlags:63,display:{Name:'[{"text":"Exclusive Trident Effect","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Complete advancements to unlock.","color":"#d2a800","italic":false}]']},clickable:1}
replaceitem entity @s[advancements={custom/unlock_trident_effect=true}] enderchest.14 trident{HideFlags:63,display:{Name:'[{"text":"Exclusive Trident Effect","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]']},clickable:1}
replaceitem entity @s[advancements={custom/unlock_trident_effect=true},scores={trident_effects=18}] enderchest.14 trident{HideFlags:63,display:{Name:'[{"text":"Exclusive Trident Effect","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}

replaceitem entity @s enderchest.16 iron_bars{bar:4,HideFlags:63,display:{Name:'[{"text":"Exclusive Death Message","color":"red","italic":false,"bold":true}]',Lore:['[{"text":"Complete advancements to unlock.","color":"dark_red","italic":false}]']},clickable:1}
replaceitem entity @s[advancements={custom/unlock_death_message=true}] enderchest.16 bone{HideFlags:63,display:{Name:'[{"text":"Exclusive Death Message","color":"red","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]']},clickable:1}
replaceitem entity @s[advancements={custom/unlock_death_message=true},scores={death_msg=18}] enderchest.16 bone{HideFlags:63,display:{Name:'[{"text":"Exclusive Death Message","color":"red","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"x",lvl:1}]}



replaceitem entity @s enderchest.18 barrier{HideFlags:63,display:{Name:'[{"text":"Back","color":"red","italic":false,"bold":true}]'},clickable:1}