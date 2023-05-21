scoreboard players set @s screen 0
function chest_menu:clear
item replace entity @s enderchest.9 with golden_helmet{HideFlags:63,display:{Name:'[{"text":"Cosmetics","color":"yellow","italic":false,"bold":true}]'},clickable:1}
item replace entity @s enderchest.11 with book{HideFlags:63,display:{Name:'[{"text":"Tutorial","color":"blue","italic":false,"bold":true}]'},clickable:1}
item replace entity @s enderchest.13 with chiseled_deepslate{HideFlags:63,display:{Name:'[{"text":"Tournaments","color":"gold","italic":false,"bold":true}]'},clickable:1}
item replace entity @s enderchest.15 with nether_star{HideFlags:63,display:{Name:'[{"text":"Statistics","color":"green","italic":false,"bold":true}]'},clickable:1}
item replace entity @s enderchest.17 with command_block{HideFlags:63,display:{Name:'[{"text":"Credits","color":"aqua","italic":false,"bold":true}]'},clickable:1}

execute unless entity @s[tag=!has_test,tag=!has_help,tag=!has_bld,tag=!has_srbld,tag=!has_prg,tag=!has_srprg,tag=!has_manager,tag=!has_lead,tag=!has_submitter,tag=!has_pc,tag=!has_cr,tag=!has_art] run item replace entity @s enderchest.26 with written_book{clickable:1,HideFlags:63,display:{Name:'[{"text":"Titles","bold":true,"italic":false,"color":"white"}]'}}

