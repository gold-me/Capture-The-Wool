
function ctw:command_checks/leave_cmd_check
## Broadcast leave message
    execute unless score success ctw_cycle matches 1 run tellraw @a[tag=ctw_players] [{"selector":"@s"},{"text":" left Capture The Wool","color":"red"}]
execute unless score success ctw_cycle matches 1 run function ctw:main/leave
