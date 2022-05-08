execute in minecraft:overworld positioned 2834 -64 -5000000 unless block ~ ~ ~ yellow_shulker_box run function ctw:setup/summon_inv_storage
data modify storage ctw:inv players[-1].items set from entity @s Inventory

## Check for slots in reverse because it's easier to pull from the last slot
function ctw:inv/store/check_offhand
function ctw:inv/store/check_armor
function ctw:inv/store/check_inv
function ctw:inv/store/check_hotbar