## NOTE TO SELF: Do this

## Remove loaded chunk
    execute as @e[type=marker,tag=ctw_dim] run function ctw:setup/unload_chunk

## Force all players out of the game
    execute as @a[tag=ctw_players] run function ctw:main/trigger_leave

## Remove teams
    team remove ctw_blue_team
    team remove ctw_red_team

## Remove scoreboards
    scoreboard objectives remove ctw_version
    scoreboard objectives remove ctw_setup
    scoreboard objectives remove ctw_game_updates
    scoreboard objectives remove ctw_wool_break_R
    scoreboard objectives remove ctw_wool_break_B
    scoreboard objectives remove ctw_deaths
    scoreboard objectives remove ctw_admin_toggle
    scoreboard objectives remove ctw_cycle
    scoreboard objectives remove ctw_inv
    scoreboard objectives remove ctw_join
    scoreboard objectives remove ctw_help
    scoreboard objectives remove ctw_leave
    scoreboard objectives remove ctw_ready
    scoreboard objectives remove ctw_join_blue
    scoreboard objectives remove ctw_join_red
    scoreboard objectives remove ctw_admin
    scoreboard objectives remove ctw_fill_teams
    scoreboard objectives remove ctw_check_spawns
    scoreboard objectives remove ctw_start_game
    scoreboard objectives remove ctw_end_game
    scoreboard objectives remove ctw_bal_teams
    scoreboard objectives remove ctw_set_spawns
    scoreboard objectives remove ctw_set_kits

## Remove data
    data remove storage ctw:inv temp
    data remove storage ctw:inv players
    data remove storage ctw:storage temp
    data remove storage ctw:storage tempid
    data remove storage ctw:storage spawns

## Remove tags
    tag @a remove ctw_players
    tag @a remove ctw_hasWool
    tag @a remove ctw_capture
    tag @a remove ctw_admin

tellraw @s {"text": "Capture The Wool Uninstalled!","color": "green"}