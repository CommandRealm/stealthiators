summon minecraft:area_effect_cloud 24.13 68.4 -41.18 {Tags:["check_sign","remove","check_ready"],Duration:20}
summon minecraft:area_effect_cloud 24.13 68.4 -41.24 {Tags:["check_sign","remove","check_ready"],Duration:20}
summon minecraft:area_effect_cloud 24.13 68.4 -41.12 {Tags:["check_sign","remove","check_ready"],Duration:20}
summon minecraft:area_effect_cloud 24.13 68.4 -41.82 {Tags:["check_sign","add","check_ready"],Duration:20}
summon minecraft:area_effect_cloud 24.13 68.4 -41.88 {Tags:["check_sign","add","check_ready"],Duration:20}
summon minecraft:area_effect_cloud 24.13 68.4 -41.76 {Tags:["check_sign","add","check_ready"],Duration:20}
function options:ready/raycast
kill @e[tag=check_sign]
return 1