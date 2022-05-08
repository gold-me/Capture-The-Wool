execute store result score slot_current ctw_inv run data get storage ctw:inv players[-1].items[-1].Slot
scoreboard players operation slot ctw_inv = slot_current ctw_inv
execute unless data storage ctw:inv players[-1].items[-1] run scoreboard players set slot ctw_inv -1

execute if score slot ctw_inv matches 0..8 run function ctw:inv/store/found_hotbar