##the kill is so this can be run multiple times
kill @e[tag=completionist_spin]
##aec summon which spins. Coordinates can be changed.
summon minecraft:area_effect_cloud 0 5 0 {Duration:1000000,Tags:["completionist_spin"]}



##run with a "execute if entity @a[advancements={advancements:completionist/completionist=true},tag=!playing] run function completionist:completionist_helix" in the lobby function

return 1