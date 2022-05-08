execute store result storage ctw:inv team_red.items[-1].Slot byte 1 run scoreboard players get slot ctw_inv 
data modify storage ctw:inv team_red.inv prepend from storage ctw:inv team_red.items[-1]
data remove storage ctw:inv team_red.items[-1]

function ctw:setup/kit_red/store/check_inv