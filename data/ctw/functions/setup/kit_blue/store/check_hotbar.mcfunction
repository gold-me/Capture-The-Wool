execute store result score slot_current ctw_inv run data get storage ctw:inv team_blue.items[-1].Slot
scoreboard players operation slot ctw_inv = slot_current ctw_inv
execute unless data storage ctw:inv team_blue.items[-1] run scoreboard players set slot ctw_inv -1

execute if score slot ctw_inv matches 0..8 unless score slot ctw_inv matches 4 run function ctw:setup/kit_blue/store/found_hotbar
execute if score slot ctw_inv matches 4 run function ctw:setup/kit_blue/store/override_hotbar_middle