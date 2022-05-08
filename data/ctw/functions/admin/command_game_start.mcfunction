## Get player info
    function ctw:game_checks/get_info_player

## Pick a random player who is not on a team and force them on the one with less players
    execute unless score playerNum ctw_setup = playerNum_teams ctw_setup run function ctw:admin/fill_team/fill_teams

## Message for when game is started
    execute if score playerNum ctw_setup = playerNum_teams ctw_setup run tellraw @a[tag=ctw_players] [{"text":"NOTE: ","color":"yellow","bold":true},{"text":"An Admin has started the game","color":"red"}]
    execute as @a[tag=ctw_players] at @s if score playerNum ctw_setup = playerNum_teams ctw_setup run playsound minecraft:entity.enderman.teleport master @s

## Force game to start (NOTE: this bypasses the minimum player count, but not the spawn checks, making it useful for testing)
    execute as @a[tag=ctw_players_r] run tag @s remove ctw_players_r
    function ctw:game_checks/check_valid_game

## Re-enable trigger
    scoreboard players reset @s ctw_start_game
    scoreboard players enable @s ctw_start_game