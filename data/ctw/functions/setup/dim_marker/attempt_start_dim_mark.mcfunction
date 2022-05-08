execute as @s store success score success ctw_setup run forceload add ~ ~
execute if score success ctw_setup matches 1 run function ctw:setup/dim_marker/start_dim_mark
execute unless score success ctw_setup matches 1 run function ctw:setup/dim_marker/check_chunk_loaded