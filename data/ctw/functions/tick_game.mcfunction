## Checks for if a player has broken wool
    execute unless data storage ctw:storage game_states[{wool_blue:1b}] run function ctw:game_checks/check_wool_stolen_blue
    execute unless data storage ctw:storage game_states[{wool_red:1b}] run function ctw:game_checks/check_wool_stolen_red

## Checks for players with wool
    execute if data storage ctw:storage game_states[{wool_red:1b}] run function ctw:game_checks/check_wool_lost_red
    execute if data storage ctw:storage game_states[{wool_blue:1b}] run function ctw:game_checks/check_wool_lost_blue

## Check for players with deaths
    execute as @a[tag=ctw_inGame,tag=!ctw_dead,scores={ctw_deaths=1..},limit=1] at @s unless entity @p[distance=0..0.001] run tag @s add ctw_dead
    ## When a player dies there is a small window where they are in the world and dead at the same time, this just makes sure that we only give them a 
    execute as @a[tag=ctw_dead,distance=0..] run function ctw:game_checks/check_death

## Auto end game if there are no players
    execute if score playerNum ctw_setup matches 0 run function ctw:game_updates/end_game