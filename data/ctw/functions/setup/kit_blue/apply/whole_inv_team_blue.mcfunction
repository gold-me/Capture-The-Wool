execute in minecraft:overworld positioned 2834 -64 -5000000 unless block ~ ~ ~ yellow_shulker_box run function ctw:setup/summon_inv_storage

function ctw:setup/kit_blue/load/offhand
execute as @a[team=ctw_blue_team] run function ctw:setup/kit_blue/apply/offhand
function ctw:setup/kit_blue/load/armor
execute as @a[team=ctw_blue_team] run function ctw:setup/kit_blue/apply/armor
function ctw:setup/kit_blue/load/inv
execute as @a[team=ctw_blue_team] run function ctw:setup/kit_blue/apply/inv
function ctw:setup/kit_blue/load/hotbar
execute as @a[team=ctw_blue_team] run function ctw:setup/kit_blue/apply/hotbar