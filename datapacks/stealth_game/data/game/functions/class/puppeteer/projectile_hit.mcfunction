# called when the projectile hits something

# summon
summon minecraft:stray ~ ~ ~ {Silent:1b,Tags:["die","fake_boots","needs_adjustments"],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{},{},{id:"minecraft:light_gray_stained_glass_pane",tag:{CustomModelData:1},Count:1b}],Attributes:[{Name:"minecraft:generic.follow_range",Base:0.0d},{Name:"minecraft:generic.attack_damage",Base:0.0d}],active_effects:[{id:"minecraft:invisibility",duration:100000,show_particles:0b},{id:"minecraft:resistance",duration:100000,show_particles:0b}]}
execute as @e[type=minecraft:stray,tag=needs_adjustments] at @s run tp @s ~ ~ ~ facing entity @p[team=gladiator]
execute as @e[type=minecraft:stray,tag=needs_adjustments] at @s store result score @s save_rot run data get entity @s Rotation[0] 1
tag @e[type=minecraft:stray,tag=needs_adjustments] remove needs_adjustments



# particle
particle minecraft:item minecraft:snowball{CustomModelData:1} ~ ~ ~ 0 0 0 0.1 30 force @a[team=sneaker]

# kill
kill @s
return 1