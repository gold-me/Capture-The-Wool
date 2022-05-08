## Empty teams
    team empty ctw_blue_team
    team empty ctw_red_team

## Get player info
    function ctw:game_checks/get_info_player

## Pick a random player who is not on a team and force them on the one with less players
    function ctw:admin/fill_team/fill_teams

## Message for when teams are filled
    execute if score playerNum ctw_setup = playerNum_teams ctw_setup run tellraw @a[tag=ctw_players] [{"text":"NOTE: ","color":"yellow","bold":true},{"text":"An Admin has re-balanced the teams","color":"red"}]
    execute as @a[tag=ctw_players] at @s run playsound minecraft:entity.enderman.teleport master @s

## Re-enable trigger
    scoreboard players reset @s ctw_bal_teams
    scoreboard players enable @s ctw_bal_teams