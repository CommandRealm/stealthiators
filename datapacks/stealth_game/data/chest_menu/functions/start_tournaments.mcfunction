scoreboard players set @s screen 8
function chest_menu:clear

item replace entity @s enderchest.0 with minecraft:player_head{SkullOwner:"FalconReign",HideFlags:63,display:{Name:'[{"text":"Tick By Tick 4","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Date: ","color":"gray","italic":false},{"text":"February 27th, 2021","color":"light_purple"}]','[{"text":"=-= ","color":"gold","italic":false},{"text":" Placements ","color":"blue","bold":true},{"text":"=-= ","color":"gold"}]','[{"text":"1st","color":"yellow","italic":false},{"text":": ","color":"gray"},{"text":"FalconReign","color":"gold"}]','[{"text":"2nd","color":"yellow","italic":false},{"text":": ","color":"gray"},{"text":"TheViralMelon","color":"gold"}]','[{"text":"3rd","color":"yellow","italic":false},{"text":": ","color":"gray"},{"text":"Silent04_","color":"gold"}]']},clickable:1}

item replace entity @s enderchest.18 with minecraft:barrier{HideFlags:63,display:{Name:'[{"text":"Back","color":"red","italic":false,"bold":true}]'},clickable:1}
return 1