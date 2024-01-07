summon minecraft:area_effect_cloud 34.18 67.4 -54.88 {Tags:["check_sign","remove","check_small"],Duration:20}
summon minecraft:area_effect_cloud 34.24 67.4 -54.88 {Tags:["check_sign","remove","check_small"],Duration:20}
summon minecraft:area_effect_cloud 34.12 67.4 -54.88 {Tags:["check_sign","remove","check_small"],Duration:20}
summon minecraft:area_effect_cloud 34.82 67.4 -54.88 {Tags:["check_sign","add","check_small"],Duration:20}
summon minecraft:area_effect_cloud 34.88 67.4 -54.88 {Tags:["check_sign","add","check_small"],Duration:20}
summon minecraft:area_effect_cloud 34.76 67.4 -54.88 {Tags:["check_sign","add","check_small"],Duration:20}
function options:small/raycast
kill @e[tag=check_sign]
return 1