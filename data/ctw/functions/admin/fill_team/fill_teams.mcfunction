function ctw:game_checks/get_info_player

execute as @r[tag=ctw_players,predicate=ctw:coinflip,team=] if score playerNum_blue ctw_setup <= playerNum_red ctw_setup run function ctw:main/join_team_blue

function ctw:game_checks/get_info_player

execute as @r[tag=ctw_players,predicate=ctw:coinflip,team=] if score playerNum_red ctw_setup <= playerNum_blue ctw_setup run function ctw:main/join_team_red

function ctw:game_checks/get_info_player

## Repeat until teams are full
    execute unless score playerNum ctw_setup = playerNum_teams ctw_setup run function ctw:admin/fill_team/fill_teams