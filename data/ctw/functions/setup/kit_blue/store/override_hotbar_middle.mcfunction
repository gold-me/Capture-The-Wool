data remove storage ctw:inv team_blue.items[-1]
tellraw @s [{"text":"NOTE: ","color":"yellow","bold":true},{"text":"An item was found in your middle hotbar slot and was not stored","color":"red"}]
function ctw:setup/kit_blue/store/check_hotbar