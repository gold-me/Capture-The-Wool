data modify storage ctw:storage tempid set value spawn
function ctw:tps/cycle/spawns
execute at @s run function ctw:admin/set_spawn/set_location

playsound minecraft:entity.experience_orb.pickup master @s
    tellraw @s [{"text":"The ","color":"yellow"},{"text":"Exit","color":"dark_aqua"},{"text":" spawn has been set to "},{"nbt":"spawns[-1].displayPos[0]","storage":"ctw:storage","color":"light_purple"},{"text":" "},{"nbt":"spawns[-1].displayPos[1]","storage":"ctw:storage","color":"light_purple"},{"text":" "},{"nbt":"spawns[-1].displayPos[2]","storage":"ctw:storage","color":"light_purple"},{"text":" "},{"text":"in dimension: "},{"nbt":"spawns[-1].dim","storage":"ctw:storage","color":"green"}]