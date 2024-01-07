# called when an arrow lands
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 2

# glowing
effect give @a[distance=..6,tag=playing,team=sneaker] minecraft:glowing 3 0 false
effect give @a[distance=..6,tag=playing,team=sneaker] minecraft:slowness 3 1 false

particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.25 10

kill @s
return 1