data modify storage ctw:storage tempid set value wool_red
function ctw:tps/cycle/locations

execute unless score success ctw_cycle matches 1 run tellraw @s [{"text":"The ","color":"yellow"},{"text":"Red Wool","color":"red"},{"text":" location is set to "},{"nbt":"spawns[-1].displayPos[0]","storage":"ctw:storage","color":"light_purple"},{"text":" "},{"nbt":"spawns[-1].displayPos[1]","storage":"ctw:storage","color":"light_purple"},{"text":" "},{"nbt":"spawns[-1].displayPos[2]","storage":"ctw:storage","color":"light_purple"},{"text":" "},{"text":"in dimension: "},{"nbt":"spawns[-1].dim","storage":"ctw:storage","color":"green"}]

execute if score success ctw_cycle matches 1 run tellraw @s [{"text": "ERROR: ","bold": true}, {"text": "There is no Red Wool location","color": "red"}]