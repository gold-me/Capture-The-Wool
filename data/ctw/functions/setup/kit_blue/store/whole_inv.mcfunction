execute in minecraft:overworld positioned 2834 -64 -5000000 unless block ~ ~ ~ yellow_shulker_box run function ctw:setup/summon_inv_storage
data modify storage ctw:inv team_blue.items set from entity @s Inventory

function ctw:setup/kit_blue/store/check_offhand
function ctw:setup/kit_blue/store/check_armor
function ctw:setup/kit_blue/store/check_inv
function ctw:setup/kit_blue/store/check_hotbar