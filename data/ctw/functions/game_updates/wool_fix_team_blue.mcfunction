scoreboard players reset @s ctw_wool_break_B
execute at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:blue_wool"}},distance=..10]
tellraw @s {"text": "You can't break your own wool!","color": "red"}
function ctw:setup/wool_place_blue