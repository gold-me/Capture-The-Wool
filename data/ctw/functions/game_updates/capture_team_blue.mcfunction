## This stops the game from calling the function every tick
    execute as @a[tag=!ctw_capture,tag=ctw_hasWool,team=ctw_blue_team] if predicate ctw:on_block_lapis run tag @s add ctw_capture

## Countdown message and downtick
    execute as @a[tag=ctw_capture,team=ctw_blue_team] run tellraw @a[tag=ctw_players] [{"text":"Red Team's ","color":"red","bold":true},{"text":"Wool will be captured by: ","color":"yellow","bold":false},{"selector":"@s","color":"reset"},{"text":" in ","color":"yellow","bold":false},{"score":{"name":"blue_cap_count","objective":"ctw_game_updates"},"color":"gold"},{"text":" seconds","color":"yellow","bold":false}]
    execute as @a[tag=ctw_capture,team=ctw_blue_team] run scoreboard players remove blue_cap_count ctw_game_updates 1


## This is to either repeat the countdown or end the game
    execute if score blue_cap_count ctw_game_updates matches 0 run schedule function ctw:game_updates/win_team_blue 1s
    execute unless score blue_cap_count ctw_game_updates matches 0 run schedule function ctw:game_updates/capture_team_blue 1s