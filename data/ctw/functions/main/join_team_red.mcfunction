 team join ctw_red_team
    tellraw @s [{"text": "Joined the ","color": "green"},{"text": "Red Team","color": "red"}]

## Enable joining of other team
    scoreboard players reset @s ctw_join_red
    scoreboard players enable @s ctw_join_blue
    scoreboard players enable @s[tag=!ctw_players_r] ctw_ready