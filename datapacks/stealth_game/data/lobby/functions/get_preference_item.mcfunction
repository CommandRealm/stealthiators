kill @e[type=item,nbt={Item:{tag:{preference_item:1}}}]
clear @s carrot_on_a_stick{preference_item:1}
execute if entity @s[tag=!prefer_gladiator] run item replace entity @s hotbar.2 with carrot_on_a_stick{clickable:0,CustomModelData:9,display:{Name:'{"text":"You would prefer to be a runner. Click to change.","color":"gray","italic":false}'},preference_item:1}
execute if entity @s[tag=prefer_gladiator] run item replace entity @s hotbar.2 with carrot_on_a_stick{clickable:0,CustomModelData:4,display:{Name:'{"text":"You would prefer to be a gladiator. Click to change.","color":"red","italic":false}'},preference_item:1}