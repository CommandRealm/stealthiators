playsound minecraft:entity.player.attack.crit master @s ~ ~ ~ 10000 0.8
effect give @p[team=gladiator,gamemode=adventure,scores={damage_taken=1..,stun_timer=0}] slowness 3 255 true
effect give @p[team=gladiator,gamemode=adventure,scores={damage_taken=1..,stun_timer=0}] weakness 2 255 true
scoreboard players set @p[team=gladiator,gamemode=adventure,scores={damage_taken=1..,stun_timer=0}] stun_timer 160
playsound minecraft:entity.player.hurt_sweet_berry_bush master @p[team=gladiator,gamemode=adventure,scores={damage_taken=1..,stun_timer=0}] ~ ~ ~ 1000 0.75
playsound minecraft:entity.player.small_fall master @p[team=gladiator,gamemode=adventure,scores={damage_taken=1..,stun_timer=0}] ~ ~ ~ 1 0