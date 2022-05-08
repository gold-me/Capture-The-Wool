tag @a[tag=ctw_players_r] remove ctw_players_r

function ctw:game_checks/check_spawn_all

execute if score isSet ctw_setup matches 6 run function ctw:setup/countdown
execute unless score isSet ctw_setup matches 6 run tellraw @a[tag=ctw_players] [{"text":"ERROR: ","bold":true},{"text":"One or more locations are unset","color": "red"}]