execute unless entity @a[tag=playing,team=sneaker,tag=prefer_gladiator] run team join gladiator @r[tag=playing,team=sneaker]
execute if entity @a[tag=playing,team=sneaker,tag=prefer_gladiator] run team join gladiator @r[tag=playing,tag=prefer_gladiator,team=sneaker]
scoreboard players remove $g_left gladiators 1
execute if score $g_left gladiators matches 1.. run function game:gameplay/select_gladiators