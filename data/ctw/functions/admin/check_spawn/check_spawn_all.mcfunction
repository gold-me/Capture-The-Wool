function ctw:game_checks/check_spawn_all

## Spawn Check Messages
    function ctw:admin/check_spawn/check_spawn_blue
    function ctw:admin/check_spawn/check_spawn_red
    function ctw:admin/check_spawn/check_wool_blue
    function ctw:admin/check_spawn/check_wool_red
    function ctw:admin/check_spawn/check_spawn_lobby
    function ctw:admin/check_spawn/check_spawn

## All spawnpoints set message
    execute at @s if score isSet ctw_setup matches 6 run playsound minecraft:entity.experience_orb.pickup master @s
    execute if score isSet ctw_setup matches 6 run tellraw @s {"text": "All Spawnpoints are Set","color": "gold","bold": true}