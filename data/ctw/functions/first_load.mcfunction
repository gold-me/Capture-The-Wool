team add ctw_blue_team "Blue Team"
    team modify ctw_blue_team color blue
    team modify ctw_blue_team collisionRule pushOtherTeams
team add ctw_red_team "Red Team"
    team modify ctw_red_team color red
    team modify ctw_red_team collisionRule pushOtherTeams
scoreboard objectives add ctw_setup dummy "Game Setup"
    scoreboard players add isSet ctw_setup 0
    scoreboard players set isStarted ctw_setup 0
    scoreboard players add playerNum ctw_setup 0
    scoreboard players add playerNum_r ctw_setup 0
    scoreboard players add playerNum_red ctw_setup 0
    scoreboard players add playerNum_blue ctw_setup 0
    scoreboard players add playerNum_teams ctw_setup 0
    scoreboard players set countdown ctw_setup 5
scoreboard objectives add ctw_game_updates dummy "Game Updates"
    scoreboard players set red_wool_count ctw_game_updates 10
    scoreboard players set blue_wool_count ctw_game_updates 10
    scoreboard players set red_cap_count ctw_game_updates 5
    scoreboard players set blue_cap_count ctw_game_updates 5
scoreboard objectives add ctw_wool_break_R minecraft.mined:minecraft.red_wool "Red Wool Broken"
scoreboard objectives add ctw_wool_break_B minecraft.mined:minecraft.blue_wool "Blue Wool Broken"
scoreboard objectives add ctw_deaths deathCount "Deaths"
scoreboard objectives add ctw_admin_toggle dummy "Admin Toggle"
scoreboard objectives add ctw_cycle dummy "Data Cycler"
scoreboard objectives add ctw_inv dummy "Inventory Storage"

## Player triggers
    scoreboard objectives add ctw_join trigger "Join"
    scoreboard objectives add ctw_help trigger "Help"
    scoreboard objectives add ctw_leave trigger "Leave"
    scoreboard objectives add ctw_ready trigger "Ready"
    scoreboard objectives add ctw_join_blue trigger "Blue Team"
    scoreboard objectives add ctw_join_red trigger "Red Team"

## Admin triggers
    scoreboard objectives add ctw_admin trigger "Toggle Admin Commands"
    scoreboard objectives add ctw_fill_teams trigger "Fill Teams"
    scoreboard objectives add ctw_check_spawns trigger "Check Spawns"
    scoreboard objectives add ctw_start_game trigger "Start Game"
    scoreboard objectives add ctw_end_game trigger "End Game"
    scoreboard objectives add ctw_bal_teams trigger "Balance Teams"
    scoreboard objectives add ctw_set_spawns trigger "Set Spawns"
    scoreboard objectives add ctw_set_kits trigger "Set Kits"