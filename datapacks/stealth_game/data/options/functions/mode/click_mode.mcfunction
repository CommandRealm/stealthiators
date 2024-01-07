summon minecraft:area_effect_cloud 29.13 68.4 -31.18 {Tags:["check_sign","remove","check_mode"],Duration:20}
summon minecraft:area_effect_cloud 29.13 68.4 -31.24 {Tags:["check_sign","remove","check_mode"],Duration:20}
summon minecraft:area_effect_cloud 29.13 68.4 -31.12 {Tags:["check_sign","remove","check_mode"],Duration:20}
summon minecraft:area_effect_cloud 29.13 68.4 -31.82 {Tags:["check_sign","add","check_mode"],Duration:20}
summon minecraft:area_effect_cloud 29.13 68.4 -31.88 {Tags:["check_sign","add","check_mode"],Duration:20}
summon minecraft:area_effect_cloud 29.13 68.4 -31.76 {Tags:["check_sign","add","check_mode"],Duration:20}
function options:mode/raycast
kill @e[tag=check_sign]
return 1