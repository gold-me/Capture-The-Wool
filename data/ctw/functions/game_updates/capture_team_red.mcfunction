## This stops the game from calling the function every tick
    execute as @a[tag=!ctw_capture,tag=ctw_hasWool,team=ctw_red_team] if predicate ctw:on_block_redstone run tag @s add ctw_capture

## Countdown message and downtick
    execute as @a[tag=ctw_capture,team=ctw_red_team] run tellraw @a[tag=ctw_players] [{"text":"Blue Team's ","color":"blue","bold":true},{"text":"Wool will be captured by: ","color":"yellow","bold":false},{"selector":"@s","color":"reset"},{"text":" in ","color":"yellow","bold":false},{"score":{"name":"red_cap_count","objective":"ctw_game_updates"},"color":"gold"},{"text":" seconds","color":"yellow","bold":false}]
    execute as @a[tag=ctw_capture,team=ctw_red_team] run scoreboard players remove red_cap_count ctw_game_updates 1


## This is to either repeat the countdown or end the game
    execute if score red_cap_count ctw_game_updates matches 0 run schedule function ctw:game_updates/win_team_red 1s
    execute unless score red_cap_count ctw_game_updates matches 0 run schedule function ctw:game_updates/capture_team_red 1s