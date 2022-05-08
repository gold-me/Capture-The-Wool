## Give default kits
    execute as @a[team=ctw_red_team] unless score kit_red_dyn ctw_setup matches 1 run function ctw:setup/kit_default_team_red
    execute as @a[team=ctw_blue_team] unless score kit_blue_dyn ctw_setup matches 1 run function ctw:setup/kit_default_team_blue

## Give dynamic kits
    execute if score kit_blue_dyn ctw_setup matches 1 run function ctw:setup/kit_dynamic_team_blue
    execute if score kit_red_dyn ctw_setup matches 1 run function ctw:setup/kit_dynamic_team_red