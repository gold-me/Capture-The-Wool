## Restore player inventory from storage
    function ctw:inv/inv_restore
    function ctw:inv/inv_storage_clear

## Stop game from breaking if the player leaves with the wool
    execute if entity @s[tag=ctw_hasWool,team=ctw_red_team] run function ctw:game_updates/wool_lost_blue
    execute if entity @s[tag=ctw_hasWool,team=ctw_blue_team] run function ctw:game_updates/wool_lost_red

## Remove player from all game teams and scores
    tag @s remove ctw_hasWool
    tag @s remove ctw_players
    tag @s remove ctw_players_r
    tag @s remove ctw_inGame
    team leave @s
    effect clear @s

## tp player to spawn and set gamemode to survivial
    function ctw:tps/tp_spawn
    gamemode survival @s[tag=!ctw_admin]

## Remove triggers from player Commands
    scoreboard players reset @s ctw_leave
    scoreboard players reset @s ctw_join_red
    scoreboard players reset @s ctw_join_blue
    scoreboard players reset @s ctw_ready