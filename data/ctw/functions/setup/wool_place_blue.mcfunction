## Set destination and summon the marker in the right dimension
data modify storage ctw:storage tempid set value wool_blue
function ctw:tps/cycle/locations
execute unless score remaining ctw_cycle matches 0 as @e[type=minecraft:marker,tag=ctw_dim] run function ctw:tps/attempt_summon_tp

## Place wool at location
execute as @e[tag=ctw_tp,limit=1] run function ctw:setup/wool_location_blue