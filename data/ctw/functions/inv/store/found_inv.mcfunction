execute store result storage ctw:inv players[-1].items[-1].Slot byte 1 run scoreboard players get slot ctw_inv 
data modify storage ctw:inv players[-1].inv prepend from storage ctw:inv players[-1].items[-1]
data remove storage ctw:inv players[-1].items[-1]

function ctw:inv/store/check_inv