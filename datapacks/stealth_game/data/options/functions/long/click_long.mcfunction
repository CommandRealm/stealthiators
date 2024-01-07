summon minecraft:area_effect_cloud 28.18 67.4 -52.88 {Tags:["check_sign","remove","check_long"],Duration:20}
summon minecraft:area_effect_cloud 28.24 67.4 -52.88 {Tags:["check_sign","remove","check_long"],Duration:20}
summon minecraft:area_effect_cloud 28.12 67.4 -52.88 {Tags:["check_sign","remove","check_long"],Duration:20}
summon minecraft:area_effect_cloud 28.82 67.4 -52.88 {Tags:["check_sign","add","check_long"],Duration:20}
summon minecraft:area_effect_cloud 28.88 67.4 -52.88 {Tags:["check_sign","add","check_long"],Duration:20}
summon minecraft:area_effect_cloud 28.76 67.4 -52.88 {Tags:["check_sign","add","check_long"],Duration:20}
function options:long/raycast
kill @e[tag=check_sign]
return 1