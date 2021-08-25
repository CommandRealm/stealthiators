playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 2
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0
scoreboard players set @s warp_cooldown 400
tp @s[team=sneaker,tag=playing,scores={r_class=3,runner_id=1}] @e[limit=1,type=area_effect_cloud,nbt={Age:59},tag=warp_spot_1]
tp @s[team=sneaker,tag=playing,scores={r_class=3,runner_id=2}] @e[limit=1,type=area_effect_cloud,nbt={Age:59},tag=warp_spot_2]
tp @s[team=sneaker,tag=playing,scores={r_class=3,runner_id=3}] @e[limit=1,type=area_effect_cloud,nbt={Age:59},tag=warp_spot_3]
tp @s[team=sneaker,tag=playing,scores={r_class=3,runner_id=4}] @e[limit=1,type=area_effect_cloud,nbt={Age:59},tag=warp_spot_4]
tp @s[team=sneaker,tag=playing,scores={r_class=3,runner_id=5}] @e[limit=1,type=area_effect_cloud,nbt={Age:59},tag=warp_spot_5]
tp @s[team=sneaker,tag=playing,scores={r_class=3,runner_id=6}] @e[limit=1,type=area_effect_cloud,nbt={Age:59},tag=warp_spot_6]
tp @s[team=sneaker,tag=playing,scores={r_class=3,runner_id=7}] @e[limit=1,type=area_effect_cloud,nbt={Age:59},tag=warp_spot_7]
tp @s[team=sneaker,tag=playing,scores={r_class=3,runner_id=8}] @e[limit=1,type=area_effect_cloud,nbt={Age:59},tag=warp_spot_8]
tp @s[team=sneaker,tag=playing,scores={r_class=3,runner_id=9}] @e[limit=1,type=area_effect_cloud,nbt={Age:59},tag=warp_spot_9]
tp @s[team=sneaker,tag=playing,scores={r_class=3,runner_id=10}] @e[limit=1,type=area_effect_cloud,nbt={Age:59},tag=warp_spot_10]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000 1
clear @s carrot_on_a_stick{CustomModelData:8}
scoreboard players reset @s right_click