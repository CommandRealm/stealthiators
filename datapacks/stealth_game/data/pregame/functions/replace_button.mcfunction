##Called to replace the button

setblock 35 70 -40 stone_button[face=wall,facing=east]
particle item stone 0 92.5 28 0.1 0.1 0.1 0.15 5
playsound block.stone.place block @a 0 92 28 1 1
scoreboard players reset $button pregame