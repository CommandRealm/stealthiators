# called when a gladiator punches fake boots


# removing advancement
advancement revoke @s only game:hit_fake_boots

# effects
effect give @s minecraft:slowness 8 2 false
effect give @s minecraft:blindness 5 0 false
effect give @s minecraft:weakness 2 255 false

# announcement
tellraw @a[tag=playing] {"text":"A gladiator has attacked fake boots. They've been stunned!","color":"#caa541"}
playsound minecraft:block.netherite_block.break master @a[tag=playing] ~ ~ ~ 1000 0.5
playsound minecraft:block.netherite_block.break master @a[tag=playing] ~ ~ ~ 1000 0.67
playsound minecraft:block.netherite_block.break master @a[tag=playing] ~ ~ ~ 1000 0.75

# sound
playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0.67

# removing fake boots
tp @e[type=minecraft:stray,tag=fake_boots,nbt={HurtTime:10s}] 0 0 0
kill @e[type=minecraft:stray,tag=fake_boots,nbt={HurtTime:10s}]
return 1