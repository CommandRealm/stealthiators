scoreboard players reset @s throw_snowball
scoreboard players set @s puppeteer_cool 500

data modify entity @e[type=snowball,nbt={HasBeenShot:0b},sort=nearest,limit=1] Item set value {id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{CustomModelData:1}}

tag @e[type=snowball,nbt={HasBeenShot:0b},sort=nearest,limit=1] add puppeteer_snowball
tag @e[type=snowball,tag=puppeteer_snowball] add die

