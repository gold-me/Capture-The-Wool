execute store result score slot_current ctw_inv run data get storage ctw:inv players[-1].items[-1].Slot
scoreboard players operation slot ctw_inv = slot_current ctw_inv
scoreboard players add slot ctw_inv 106

execute if score slot_current ctw_inv matches -106 run function ctw:inv/store/found_offhand