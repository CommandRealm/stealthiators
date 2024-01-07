execute if score $time game matches 605 as @a[tag=playing,team=sneaker] at @s run playsound minecraft:block.chest.open master @s ~ ~ ~ 1 0
execute if score $time game matches 605 as @a[tag=playing,team=sneaker] at @s run playsound minecraft:block.chest.open master @s ~ ~ ~ 1 0.55
execute if score $time game matches 605 as @a[tag=playing,team=sneaker] at @s run playsound minecraft:block.chest.open master @s ~ ~ ~ 1 0.65
execute if score $time game matches 605 run fill 1019 151 -22 1023 151 -22 minecraft:air replace minecraft:iron_bars
execute if score $time game matches 607 run fill 1019 152 -22 1023 152 -22 minecraft:air replace minecraft:iron_bars
execute if score $time game matches 609 run fill 1019 153 -22 1023 153 -22 minecraft:air replace minecraft:iron_bars
execute if score $time game matches 611 run fill 1019 154 -22 1023 154 -22 minecraft:air replace minecraft:iron_bars
execute if score $time game matches 613 run fill 1019 155 -22 1023 155 -22 minecraft:air replace minecraft:iron_bars
execute if score $time game matches 606 as @a[tag=playing,team=sneaker] at @s run playsound minecraft:block.chest.locked master @s ~ ~ ~ 100000 0
execute if score $time game matches 610 as @a[tag=playing,team=sneaker] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.25 0

return 1