clear @s carrot_on_a_stick{CustomModelData:9}
clear @s carrot_on_a_stick{CustomModelData:8}
tag @s[tag=prefer_gladiator] add toggle_preference
tag @s add prefer_gladiator
tag @s[tag=toggle_preference] remove prefer_gladiator
execute if entity @s[tag=!prefer_gladiator] run item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:9,display:{Name:'{"text":"You would prefer to be a runner. Click to change.","color":"gray","italic":false}'},preference_item:1}
execute if entity @s[tag=prefer_gladiator] run item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:4,display:{Name:'{"text":"You would prefer to be a gladiator. Click to change.","color":"red","italic":false}'},preference_item:1}
scoreboard players reset @s right_click
tag @a remove toggle_preference
playsound minecraft:item.trident.return master @s ~ ~ ~ 10000 2