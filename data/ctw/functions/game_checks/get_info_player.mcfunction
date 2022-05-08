## Reset info scores
    scoreboard players set playerNum ctw_setup 0
    scoreboard players set playerNum_r ctw_setup 0
    scoreboard players set playerNum_red ctw_setup 0
    scoreboard players set playerNum_blue ctw_setup 0
    scoreboard players set playerNum_teams ctw_setup 0

## Get playerNum info
    execute as @a[tag=ctw_players] run scoreboard players add playerNum ctw_setup 1
    execute as @a[tag=ctw_players_r] run scoreboard players add playerNum_r ctw_setup 1
    execute as @a[team=ctw_red_team] run scoreboard players add playerNum_red ctw_setup 1
    execute as @a[team=ctw_blue_team] run scoreboard players add playerNum_blue ctw_setup 1
    execute as @a[team=ctw_red_team] run scoreboard players add playerNum_teams ctw_setup 1
    execute as @a[team=ctw_blue_team] run scoreboard players add playerNum_teams ctw_setup 1