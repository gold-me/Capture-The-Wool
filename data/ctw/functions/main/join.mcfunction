## Store the player inventory in storage
    function ctw:inv/inv_store
    clear @s
    team leave @s

## Heal the player and remove their effects
    effect clear @s
    effect give @s saturation 1000000 255 true
    effect give @s weakness 1000000 255 true

##  tp player and announces message to players
    function ctw:tps/tp_lobby
    gamemode adventure @s[tag=!ctw_admin]
    tag @s add ctw_players
    tellraw @a[tag=ctw_players] [{"selector":"@s"},{"text":" joined Capture The Wool","color":"green"}]
    tellraw @s [{"text":"To leave the game type: ","color":"green"},{"text":"/trigger ctw_leave","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Click Me to leave the game"}]},"clickEvent":{"action":"run_command","value":"/trigger ctw_leave"}}]

## Enable triggers to get ready for the game (or leave)
    scoreboard players enable @s ctw_leave
    scoreboard players enable @s ctw_join_red
    scoreboard players enable @s ctw_join_blue
