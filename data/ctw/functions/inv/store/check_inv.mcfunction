execute store result score slot_current ctw_inv run data get storage ctw:inv players[-1].items[-1].Slot
scoreboard players operation slot ctw_inv = slot_current ctw_inv
scoreboard players remove slot ctw_inv 9

execute if score slot_current ctw_inv matches 9..35 run function ctw:inv/store/found_inv