scoreboard players remove @a[team=gladiator,tag=playing,scores={stun_timer=1..}] stun_timer 1
execute as @a[team=gladiator,tag=playing,scores={stun_timer=1..}] at @s run particle minecraft:crit ~ ~2.5 ~ 0 0 0 0 1 force @a[team=sneaker,scores={r_class=1}]

##execute as @a[team=gladiator,tag=playing,scores={stun_timer=0}] at @s run function game:class/brawler/cooldown_end