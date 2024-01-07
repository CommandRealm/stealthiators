scoreboard players reset @s dash_cooldown
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick{CustomModelData:1,display:{Name:'{"text":"Dash","color":"#9dfff5","italic":false}'}}
playsound minecraft:entity.splash_potion.throw master @s ~ ~ ~ 1 2
return 1