## This section is to prevent cheese with wool
    execute as @a[team=ctw_blue_team,tag=ctw_hasWool,limit=1,sort=random] unless data entity @s {Inventory:[{tag:{ctw:red_wool}}]} run function ctw:game_updates/nocheese_team_blue
    execute as @a[team=ctw_red_team,tag=ctw_hasWool,limit=1,sort=random] unless data entity @s {Inventory:[{tag:{ctw:blue_wool}}]} run function ctw:game_updates/nocheese_team_red

execute if entity @a[tag=ctw_hasWool,limit=1,sort=random] run schedule function ctw:game_checks/check_nocheese 1t