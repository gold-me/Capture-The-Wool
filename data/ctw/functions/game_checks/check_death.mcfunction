execute if entity @s[team=ctw_blue_team] run function ctw:tps/tp_spawn_blue
execute if entity @s[team=ctw_red_team] run function ctw:tps/tp_spawn_red
execute if entity @s[team=] run function ctw:tps/tp_lobby
scoreboard players reset @s ctw_deaths
tag @s remove ctw_dead