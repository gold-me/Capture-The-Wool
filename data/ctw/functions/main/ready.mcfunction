tag @s add ctw_players_r
function ctw:game_checks/get_info_player

tellraw @a[tag=ctw_players] [{"selector":"@s"},{"text":" is ready to play! ","color":"green"},{"text":"(","color":"aqua"},{"score":{"name":"playerNum_r","objective":"ctw_setup"},"color":"yellow"},{"text":"/","color":"aqua"},{"score":{"name":"playerNum","objective":"ctw_setup"},"color":"yellow"},{"text":")","color":"aqua"},{"text":" Players Ready","color":"green"}]

execute if score playerNum ctw_setup matches ..1 run tellraw @a[tag=ctw_players] [{"text":"ERROR: ","bold":true},{"text":"At least 2 players are needed for the game to start","color": "red"}]

## Reset trigger
    scoreboard players reset @s ctw_ready