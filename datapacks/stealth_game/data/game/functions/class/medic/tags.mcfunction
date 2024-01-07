tag @s remove using_revive
scoreboard players remove @s revives 1
tag @s[scores={revives=..0}] add used_revive
# scoreboard players add @s points 2
return 1