summon minecraft:area_effect_cloud 26.13 68.4 -37.18 {Tags:["check_sign","remove","check_infection"],Duration:20}
summon minecraft:area_effect_cloud 26.13 68.4 -37.24 {Tags:["check_sign","remove","check_infection"],Duration:20}
summon minecraft:area_effect_cloud 26.13 68.4 -37.12 {Tags:["check_sign","remove","check_infection"],Duration:20}
summon minecraft:area_effect_cloud 26.13 68.4 -37.82 {Tags:["check_sign","add","check_infection"],Duration:20}
summon minecraft:area_effect_cloud 26.13 68.4 -37.88 {Tags:["check_sign","add","check_infection"],Duration:20}
summon minecraft:area_effect_cloud 26.13 68.4 -37.76 {Tags:["check_sign","add","check_infection"],Duration:20}
function options:infection/raycast
kill @e[tag=check_sign]
return 1