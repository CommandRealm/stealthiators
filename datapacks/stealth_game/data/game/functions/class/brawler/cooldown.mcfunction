scoreboard players remove @a[tag=playing,scores={stun_timer=1..},team=gladiator] stun_timer 1
execute as @a[tag=playing,scores={stun_timer=1..},team=gladiator] at @s run particle minecraft:crit ~ ~2.5 ~ 0 0 0 0 1 force @a[scores={r_class=1},team=sneaker]

##execute as @a[team=gladiator,tag=playing,scores={stun_timer=0}] at @s run function game:class/brawler/cooldown_end
return 1