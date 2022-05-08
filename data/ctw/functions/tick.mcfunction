## Check number of online players for certain varibles
    function ctw:game_checks/get_info_player

## Reset scores of players not in game/don't have wool
    execute as @a[tag=ctw_players,team=] if score @s ctw_wool_break_B matches 1.. run function ctw:game_updates/wool_fix_team_blue
    execute as @a[tag=ctw_players,team=] if score @s ctw_wool_break_R matches 1.. run function ctw:game_updates/wool_fix_team_red

## Run checks if game is running
    execute if score isStarted ctw_setup matches 1 run function ctw:tick_game
    execute unless score isStarted ctw_setup matches 1 run function ctw:tick_nogame

## Start game checks
    execute if score playerNum ctw_setup = playerNum_r ctw_setup unless score playerNum ctw_setup matches ..1 run function ctw:game_checks/check_valid_game
        ## Two checks are going on here: one for checking if every joined player is ready, and the other is to make sure there are at least 2 players

## Give everyone not in the game the ability to join
    execute as @a[tag=!ctw_players] unless score @s ctw_join = @s ctw_join run scoreboard players enable @s ctw_join

## Let admins always use the admin command
    execute as @a[tag=ctw_admin] unless score @s ctw_admin = @s ctw_admin run scoreboard players enable @s ctw_admin

## Trigger Commands
    execute as @a if score @s ctw_join = @s ctw_join unless score @s ctw_join matches 0 run function ctw:command_checks/join_cmd_check
    execute as @a if score @s ctw_leave = @s ctw_leave unless score @s ctw_leave matches 0 run function ctw:main/trigger_leave
    execute as @a if score @s ctw_ready = @s ctw_ready unless score @s ctw_ready matches 0 run function ctw:main/ready
    execute as @a if score @s ctw_join_red = @s ctw_join_red unless score @s ctw_join_red matches 0 run function ctw:main/join_team_red
    execute as @a if score @s ctw_join_blue = @s ctw_join_blue unless score @s ctw_join_blue matches 0 run function ctw:main/join_team_blue

## Admin Trigger Commands
    execute as @a if score @s ctw_admin = @s ctw_admin unless score @s ctw_admin matches 0 run function ctw:admin/toggle_commands_admin
    execute as @a if score @s ctw_fill_teams = @s ctw_fill_teams unless score @s ctw_fill_teams matches 0 run function ctw:admin/command_fill_teams
    execute as @a if score @s ctw_check_spawns = @s ctw_check_spawns unless score @s ctw_check_spawns matches 0 run function ctw:admin/command_check_spawns
    execute as @a if score @s ctw_start_game = @s ctw_start_game unless score @s ctw_start_game matches 0 run function ctw:admin/command_game_start
    execute as @a if score @s ctw_end_game = @s ctw_end_game unless score @s ctw_end_game matches 0 run function ctw:admin/command_game_end
    execute as @a if score @s ctw_bal_teams = @s ctw_bal_teams unless score @s ctw_bal_teams matches 0 run function ctw:admin/command_balance_teams
    execute as @a if score @s ctw_set_spawns = @s ctw_set_spawns unless score @s ctw_set_spawns matches 0 run function ctw:admin/command_set_spawn
    execute as @a if score @s ctw_set_kits = @s ctw_set_kits unless score @s ctw_set_kits matches 0 run function ctw:admin/command_set_kits