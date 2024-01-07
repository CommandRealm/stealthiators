summon minecraft:area_effect_cloud 31.18 67.4 -53.88 {Tags:["check_sign","remove","check_med"],Duration:20}
summon minecraft:area_effect_cloud 31.24 67.4 -53.88 {Tags:["check_sign","remove","check_med"],Duration:20}
summon minecraft:area_effect_cloud 31.12 67.4 -53.88 {Tags:["check_sign","remove","check_med"],Duration:20}
summon minecraft:area_effect_cloud 31.82 67.4 -53.88 {Tags:["check_sign","add","check_med"],Duration:20}
summon minecraft:area_effect_cloud 31.88 67.4 -53.88 {Tags:["check_sign","add","check_med"],Duration:20}
summon minecraft:area_effect_cloud 31.76 67.4 -53.88 {Tags:["check_sign","add","check_med"],Duration:20}
function options:med/raycast
kill @e[tag=check_sign]
return 1