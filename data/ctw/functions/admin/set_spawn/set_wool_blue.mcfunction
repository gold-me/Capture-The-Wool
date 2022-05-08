execute at @s unless entity @e[type=minecraft:armor_stand,tag=ctw_dim,distance=..0.01] positioned 2834 1684 -5000000 run function ctw:setup/dim_marker/attempt_start_dim_mark

data modify storage ctw:storage tempid set value wool_blue
function ctw:tps/cycle/spawns
execute at @s run summon area_effect_cloud ~ ~-1 ~ {Tags:["temp"]}
execute as @e[type=area_effect_cloud,tag=temp,limit=1,distance=..1.01] run function ctw:admin/set_spawn/set_location
kill @e[type=area_effect_cloud,tag=temp,limit=1,distance=..1.01]

## Set Dimension
data modify storage ctw:storage spawns[-1].dim set from entity @s Dimension

## Stop wool placement if y=-64 or lower
    execute if entity @s[y=-64,dy=1] run data remove storage ctw:storage spawns[-1]

## Wool placed message
    execute if data storage ctw:storage spawns[-1].Pos run function ctw:setup/wool_place_blue
    execute if data storage ctw:storage spawns[-1].Pos at @s run playsound minecraft:entity.experience_orb.pickup master @s
    execute if data storage ctw:storage spawns[-1].Pos run tellraw @s [{"text":"The ","color":"yellow"},{"text":"Blue Wool","color":"blue"},{"text":" location has been set to "},{"nbt":"spawns[-1].displayPos[0]","storage":"ctw:storage","color":"light_purple"},{"text":" "},{"nbt":"spawns[-1].displayPos[1]","storage":"ctw:storage","color":"light_purple"},{"text":" "},{"nbt":"spawns[-1].displayPos[2]","storage":"ctw:storage","color":"light_purple"},{"text":" "},{"text":"in dimension: "},{"nbt":"spawns[-1].dim","storage":"ctw:storage","color":"green"}]

## Wool too low message
    execute unless data storage ctw:storage spawns[-1].Pos run tellraw @s {"text": "That location is too low","color": "red"}