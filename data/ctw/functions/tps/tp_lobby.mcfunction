## Set destination and summon the marker in the right dimension
data modify storage ctw:storage tempid set value lobby
function ctw:tps/cycle/locations
execute unless score success ctw_cycle matches 1 as @e[type=minecraft:marker,tag=ctw_dim] run function ctw:tps/attempt_summon_tp

## tp to marker
tag @s add ctw_tpto
execute as @e[tag=ctw_tp,limit=1] run function ctw:tps/tp_destination
tag @s remove ctw_tpto