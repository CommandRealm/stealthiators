execute if entity @s[scores={revive_timer=1}] run title @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] actionbar [{"text":"⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_gray"}]
execute if entity @s[scores={revive_timer=20}] run title @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] actionbar [{"text":"⬛","color":"red"},{"text":"⬛⬛⬛⬛⬛⬛⬛","color":"dark_gray"}]
execute if entity @s[scores={revive_timer=40}] run title @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] actionbar [{"text":"⬛⬛","color":"red"},{"text":"⬛⬛⬛⬛⬛⬛","color":"dark_gray"}]
execute if entity @s[scores={revive_timer=60}] run title @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] actionbar [{"text":"⬛⬛⬛","color":"red"},{"text":"⬛⬛⬛⬛⬛","color":"dark_gray"}]
execute if entity @s[scores={revive_timer=80}] run title @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] actionbar [{"text":"⬛⬛⬛⬛","color":"red"},{"text":"⬛⬛⬛⬛","color":"dark_gray"}]
execute if entity @s[scores={revive_timer=100}] run title @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] actionbar [{"text":"⬛⬛⬛⬛⬛","color":"red"},{"text":"⬛⬛⬛","color":"dark_gray"}]
execute if entity @s[scores={revive_timer=120}] run title @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] actionbar [{"text":"⬛⬛⬛⬛⬛⬛","color":"red"},{"text":"⬛⬛","color":"dark_gray"}]
execute if entity @s[scores={revive_timer=140}] run title @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] actionbar [{"text":"⬛⬛⬛⬛⬛⬛⬛","color":"red"},{"text":"⬛","color":"dark_gray"}]
execute if entity @s[scores={revive_timer=160}] run title @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] actionbar [{"text":"⬛⬛⬛⬛⬛⬛⬛⬛","color":"red"},{"text":"","color":"dark_gray"}]
##to add two seconds add two squares to each above title
##execute if entity @s[scores={revive_timer=180}] run title @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] actionbar [{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"red"},{"text":"⬛","color":"dark_gray"}]
##execute if entity @s[scores={revive_timer=200}] run title @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] actionbar [{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"red"}]


execute if entity @s[scores={revive_timer=1}] as @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] at @s run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 0.5
execute if entity @s[scores={revive_timer=20}] as @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] at @s run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 0.525
execute if entity @s[scores={revive_timer=40}] as @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] at @s run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 0.55
execute if entity @s[scores={revive_timer=60}] as @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] at @s run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 0.575
execute if entity @s[scores={revive_timer=80}] as @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] at @s run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 0.6
execute if entity @s[scores={revive_timer=100}] as @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] at @s run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 0.625
execute if entity @s[scores={revive_timer=120}] as @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] at @s run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 0.65
execute if entity @s[scores={revive_timer=140}] as @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] at @s run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 0.675
execute if entity @s[scores={revive_timer=160}] as @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] at @s run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 0.7
##execute if entity @s[scores={revive_timer=180}] as @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] at @s run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 0.725
##execute if entity @s[scores={revive_timer=200}] as @a[team=sneaker,gamemode=adventure,distance=..1,scores={r_class=4,revive_crouch=1..}] at @s run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 0.75