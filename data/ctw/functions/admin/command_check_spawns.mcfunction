## Code for checking all spawns if unset
    execute unless score @s ctw_check_spawns matches 2..7 run function ctw:admin/check_spawn/check_spawn_all

## Check Spawn Depending on trigger value
    execute if score @s ctw_check_spawns matches 2 run function ctw:admin/check_spawn/check_spawn_blue
    execute if score @s ctw_check_spawns matches 3 run function ctw:admin/check_spawn/check_spawn_red
    execute if score @s ctw_check_spawns matches 4 run function ctw:admin/check_spawn/check_wool_blue
    execute if score @s ctw_check_spawns matches 5 run function ctw:admin/check_spawn/check_wool_red
    execute if score @s ctw_check_spawns matches 6 run function ctw:admin/check_spawn/check_spawn_lobby
    execute if score @s ctw_check_spawns matches 7 run function ctw:admin/check_spawn/check_spawn

## Re-enable trigger
    scoreboard players reset @s ctw_check_spawns
    scoreboard players enable @s ctw_check_spawns