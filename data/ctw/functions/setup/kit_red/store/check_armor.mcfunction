execute store result score slot_current ctw_inv run data get storage ctw:inv team_red.items[-1].Slot
scoreboard players operation slot ctw_inv = slot_current ctw_inv
scoreboard players remove slot ctw_inv 100
execute unless data storage ctw:inv team_red.items[-1] run scoreboard players set slot ctw_inv -1

execute if score slot_current ctw_inv matches 100..103 run function ctw:setup/kit_red/store/found_armor