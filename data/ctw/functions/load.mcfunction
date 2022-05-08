scoreboard objectives add ctw_version dummy
execute unless score isVersion ctw_version matches 1 run scoreboard players set isVersion ctw_version 0
execute if score isVersion ctw_version matches 0 run function ctw:first_load
scoreboard players set isVersion ctw_version 1

execute in minecraft:overworld positioned 2834 -64 -5000000 run function ctw:setup/load_chunk

execute in minecraft:overworld positioned 2834 -64 -5000000 unless block ~ ~ ~ yellow_shulker_box run function ctw:setup/summon_inv_storage

tellraw @a[tag=ctw_admin] {"text": "Capture The Wool Succesfully Loaded!","color": "green"}