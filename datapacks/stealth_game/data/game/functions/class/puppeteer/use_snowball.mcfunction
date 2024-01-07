scoreboard players reset @s throw_snowball
scoreboard players set @s puppeteer_cool 500

data modify entity @e[type=minecraft:snowball,sort=nearest,limit=1,nbt={HasBeenShot:0b}] Item set value {id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{CustomModelData:1}}

tag @e[type=minecraft:snowball,sort=nearest,limit=1,nbt={HasBeenShot:0b}] add puppeteer_snowball
tag @e[type=minecraft:snowball,tag=puppeteer_snowball] add die


return 1