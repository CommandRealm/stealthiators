scoreboard players set @s screen 7
function chest_menu:clear
item replace entity @s enderchest.10 with minecraft:iron_bars{bar:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Prefix","color":"dark_gray","italic":false,"bold":true}]',Lore:['[{"text":"Complete advancements to unlock.","color":"gray","italic":false}]']},clickable:1}
item replace entity @s[advancements={custom/unlock_prefix=true}] enderchest.10 with minecraft:name_tag{HideFlags:63,display:{Name:'[{"text":"Exclusive Prefix","color":"dark_gray","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]']},clickable:1}
item replace entity @s[tag=prefix,advancements={custom/unlock_prefix=true}] enderchest.10 with minecraft:name_tag{HideFlags:63,display:{Name:'[{"text":"Exclusive Prefix","color":"dark_gray","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"minecraft:x",lvl:1s}]}


item replace entity @s enderchest.12 with minecraft:iron_bars{bar:2,HideFlags:63,display:{Name:'[{"text":"Exclusive Lobby Mount","color":"green","italic":false,"bold":true}]',Lore:['[{"text":"Complete advancements to unlock.","color":"dark_green","italic":false}]']},clickable:1}
item replace entity @s[advancements={custom/unlock_lobby_mount=true}] enderchest.12 with minecraft:saddle{HideFlags:63,display:{Name:'[{"text":"Exclusive Lobby Mount","color":"green","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={lobby_mount=18},advancements={custom/unlock_lobby_mount=true}] enderchest.12 with minecraft:saddle{HideFlags:63,display:{Name:'[{"text":"Exclusive Lobby Mount","color":"green","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"minecraft:x",lvl:1s}]}



item replace entity @s enderchest.14 with minecraft:iron_bars{bar:3,HideFlags:63,display:{Name:'[{"text":"Exclusive Trident Effect","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Complete advancements to unlock.","color":"#d2a800","italic":false}]']},clickable:1}
item replace entity @s[advancements={custom/unlock_trident_effect=true}] enderchest.14 with minecraft:trident{HideFlags:63,display:{Name:'[{"text":"Exclusive Trident Effect","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={trident_effects=18},advancements={custom/unlock_trident_effect=true}] enderchest.14 with minecraft:trident{HideFlags:63,display:{Name:'[{"text":"Exclusive Trident Effect","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"minecraft:x",lvl:1s}]}

item replace entity @s enderchest.16 with minecraft:iron_bars{bar:4,HideFlags:63,display:{Name:'[{"text":"Exclusive Death Message","color":"red","italic":false,"bold":true}]',Lore:['[{"text":"Complete advancements to unlock.","color":"dark_red","italic":false}]']},clickable:1}
item replace entity @s[advancements={custom/unlock_death_message=true}] enderchest.16 with minecraft:bone{HideFlags:63,display:{Name:'[{"text":"Exclusive Death Message","color":"red","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_msg=18},advancements={custom/unlock_death_message=true}] enderchest.16 with minecraft:bone{HideFlags:63,display:{Name:'[{"text":"Exclusive Death Message","color":"red","italic":false,"bold":true}]',Lore:['[{"text":"Unlocked","color":"green","italic":false}]','[{"text":"Selected","color":"blue","italic":false}]']},clickable:1,Enchantments:[{id:"minecraft:x",lvl:1s}]}



item replace entity @s enderchest.18 with minecraft:barrier{HideFlags:63,display:{Name:'[{"text":"Back","color":"red","italic":false,"bold":true}]'},clickable:1}
return 1