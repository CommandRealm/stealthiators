function credits:pl
function credits:focii
function credits:hippeh
function credits:check
function credits:typs
scoreboard players add $time credits 1
execute if score $time credits matches 140.. run function credits:cycle_armor_stand
execute as @a[x=61,y=69,z=-25,distance=..12,scores={ready=0}] at @s anchored eyes run function credits:raycast