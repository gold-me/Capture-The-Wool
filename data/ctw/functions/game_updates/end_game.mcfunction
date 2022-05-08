## Rest game area, scores, and health
    tag @a remove ctw_inGame
    scoreboard players set blue_cap_count ctw_game_updates 5
    scoreboard players set red_cap_count ctw_game_updates 5
    function ctw:setup/wool_place_all
    execute as @a[tag=ctw_players] run clear
    effect clear @a[tag=ctw_players]
    effect give @a[tag=ctw_players] saturation 1000000 255 true
    effect give @a[tag=ctw_players] weakness 1000000 255 true

## Kill mobs summoned by players in game
    kill @e[type=!minecraft:player,team=ctw_blue_team]
    kill @e[type=!minecraft:player,team=ctw_red_team]

## Remove in-game tags and teams
    tag @a remove ctw_hasWool
    tag @a remove ctw_capture
    team empty ctw_red_team
    team empty ctw_blue_team

## Clear out some possible queued functions and empty data
    data remove storage ctw:storage game_states
    schedule clear ctw:game_updates/capture_team_blue
    schedule clear ctw:game_updates/capture_team_red
    schedule clear ctw:game_updates/wool_restore_blue
    schedule clear ctw:game_updates/wool_restore_red
    scoreboard players set isStarted ctw_setup 0

## Re-enable joining of teams
    execute as @a[tag=ctw_players] run scoreboard players enable @s ctw_join_red
    execute as @a[tag=ctw_players] run scoreboard players enable @s ctw_join_blue

## Teleport players back to lobby and sets them to adventure
    execute as @a[tag=ctw_players] run function ctw:tps/tp_lobby
    gamemode adventure @a[tag=ctw_players,tag=!ctw_admin]

## Tell players that they rejoined
    tellraw @a[tag=ctw_players] [{"text":"NOTE: ","bold":true},{"text":"You have automaticially rejoined Capture the Wool","color":"yellow","bold":false},{"text":"\nTo leave the game type: ","color":"yellow","bold":false},{"text":"/trigger ctw_leave","color":"aqua","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click Me to leave the game"}]},"clickEvent":{"action":"run_command","value":"/trigger ctw_leave"}}]