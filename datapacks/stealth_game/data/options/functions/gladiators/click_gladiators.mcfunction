summon minecraft:area_effect_cloud 28.13 68.4 -33.18 {Tags:["check_sign","remove","check_gladiators"],Duration:20}
summon minecraft:area_effect_cloud 28.13 68.4 -33.24 {Tags:["check_sign","remove","check_gladiators"],Duration:20}
summon minecraft:area_effect_cloud 28.13 68.4 -33.12 {Tags:["check_sign","remove","check_gladiators"],Duration:20}
summon minecraft:area_effect_cloud 28.13 68.4 -33.82 {Tags:["check_sign","add","check_gladiators"],Duration:20}
summon minecraft:area_effect_cloud 28.13 68.4 -33.88 {Tags:["check_sign","add","check_gladiators"],Duration:20}
summon minecraft:area_effect_cloud 28.13 68.4 -33.76 {Tags:["check_sign","add","check_gladiators"],Duration:20}
function options:gladiators/raycast
kill @e[tag=check_sign]
return 1