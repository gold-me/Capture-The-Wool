## Swap between on and off state
    execute unless score @s ctw_admin_toggle matches 2.. run scoreboard players add @s ctw_admin_toggle 1
    execute if score @s ctw_admin_toggle matches 2.. run scoreboard players set @s ctw_admin_toggle 0

## Enable Commands
    scoreboard players enable @s[scores={ctw_admin_toggle=1}] ctw_fill_teams
    scoreboard players enable @s[scores={ctw_admin_toggle=1}] ctw_check_spawns
    scoreboard players enable @s[scores={ctw_admin_toggle=1}] ctw_start_game
    scoreboard players enable @s[scores={ctw_admin_toggle=1}] ctw_end_game
    scoreboard players enable @s[scores={ctw_admin_toggle=1}] ctw_bal_teams
    scoreboard players enable @s[scores={ctw_admin_toggle=1}] ctw_set_spawns
    scoreboard players enable @s[scores={ctw_admin_toggle=1}] ctw_set_kits
    tellraw @s[scores={ctw_admin_toggle=1}] [{"text": "Admin Commands: ","color": "yellow"},{"text": "Enabled","color": "green"}]

## Disable Commands
    scoreboard players reset @s[scores={ctw_admin_toggle=0}] ctw_fill_teams
    scoreboard players reset @s[scores={ctw_admin_toggle=0}] ctw_check_spawns
    scoreboard players reset @s[scores={ctw_admin_toggle=0}] ctw_start_game
    scoreboard players reset @s[scores={ctw_admin_toggle=0}] ctw_end_game
    scoreboard players reset @s[scores={ctw_admin_toggle=0}] ctw_bal_teams
    scoreboard players reset @s[scores={ctw_admin_toggle=0}] ctw_set_spawns
    scoreboard players reset @s[scores={ctw_admin_toggle=0}] ctw_set_kits
    tellraw @s[scores={ctw_admin_toggle=0}] [{"text": "Admin Commands: ","color": "yellow"},{"text": "Disabled","color": "red"}]

## Re-enable trigger
scoreboard players reset @s ctw_admin
scoreboard players enable @s ctw_admin