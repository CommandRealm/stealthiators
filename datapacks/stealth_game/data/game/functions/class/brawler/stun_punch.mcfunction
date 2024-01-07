playsound minecraft:entity.player.attack.crit master @s ~ ~ ~ 10000 0.8
effect give @p[gamemode=adventure,scores={damage_taken=1..,stun_timer=0},team=gladiator] minecraft:slowness 3 255 true
effect give @p[gamemode=adventure,scores={damage_taken=1..,stun_timer=0},team=gladiator] minecraft:weakness 2 255 true
scoreboard players set @p[gamemode=adventure,scores={damage_taken=1..,stun_timer=0},team=gladiator] stun_timer 160
playsound minecraft:entity.player.hurt_sweet_berry_bush master @p[gamemode=adventure,scores={damage_taken=1..,stun_timer=0},team=gladiator] ~ ~ ~ 1000 0.75
playsound minecraft:entity.player.small_fall master @p[gamemode=adventure,scores={damage_taken=1..,stun_timer=0},team=gladiator] ~ ~ ~ 1 0
return 1