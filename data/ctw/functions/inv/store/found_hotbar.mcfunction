data modify storage ctw:inv players[-1].hotbar prepend from storage ctw:inv players[-1].items[-1]
data remove storage ctw:inv players[-1].items[-1]

function ctw:inv/store/check_hotbar