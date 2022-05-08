execute in minecraft:overworld positioned 2834 -64 -5000000 unless block ~ ~ ~ yellow_shulker_box run function ctw:setup/summon_inv_storage

function ctw:setup/kit_red/load/offhand
execute as @a[team=ctw_red_team] run function ctw:setup/kit_red/apply/offhand
function ctw:setup/kit_red/load/armor
execute as @a[team=ctw_red_team] run function ctw:setup/kit_red/apply/armor
function ctw:setup/kit_red/load/inv
execute as @a[team=ctw_red_team] run function ctw:setup/kit_red/apply/inv
function ctw:setup/kit_red/load/hotbar
execute as @a[team=ctw_red_team] run function ctw:setup/kit_red/apply/hotbar