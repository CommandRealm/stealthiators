# called when the projectile hits something

# summon
summon stray ~ ~ ~ {Silent:1b,Tags:["die","fake_boots","needs_adjustments"],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{},{},{id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{CustomModelData:1}}],active_effects:[{id:"minecraft:invisibility",duration:100000,show_particles:0b},{id:"minecraft:resistance",duration:100000,show_particles:0b}],Attributes:[{Name:"generic.follow_range",Base:0.0},{Name:"generic.attack_damage",Base:0.0}]}
execute as @e[type=stray,tag=needs_adjustments] at @s run tp @s ~ ~ ~ facing entity @p[team=gladiator]
execute as @e[type=stray,tag=needs_adjustments] at @s store result score @s save_rot run data get entity @s Rotation[0] 1
tag @e[type=stray,tag=needs_adjustments] remove needs_adjustments



# particle
particle item snowball{CustomModelData:1} ~ ~ ~ 0 0 0 0.1 30 force @a[team=sneaker]

# kill
kill @s