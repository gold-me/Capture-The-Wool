execute if score blue_wool_count ctw_game_updates matches 10 run tellraw @a[tag=ctw_players] [{"text": "Blue Team's ","color": "blue"},{"text":"Wool will be restored in... ","color":"yellow"},{"score":{"name":"blue_wool_count","objective":"ctw_game_updates"},"color":"gold","bold":true}]

## Only repeat message every second if countdown is at 5 or lower
    execute if score blue_wool_count ctw_game_updates matches 1..5 run tellraw @a[tag=ctw_players] [{"text": "Blue Team's ","color": "blue"},{"text":"Wool will be restored in... ","color":"yellow"},{"score":{"name":"blue_wool_count","objective":"ctw_game_updates"},"color":"gold","bold":true}]

## Repeat countdown until it reaches 0
    execute if score blue_wool_count ctw_game_updates matches 0.. run scoreboard players remove blue_wool_count ctw_game_updates 1
    execute as @a[tag=ctw_players] at @s if score blue_wool_count ctw_game_updates matches 0.. run playsound minecraft:block.note_block.hat master @p
    execute if score blue_wool_count ctw_game_updates matches 0.. run schedule function ctw:game_updates/wool_restore_blue 1s

## Code for when countdown ends
    execute if score blue_wool_count ctw_game_updates matches -1 run tellraw @a[tag=ctw_players] {"text": "The Blue Team's Wool has been restored","color": "blue","bold": true}
        execute as @a[tag=ctw_players] at @s if score blue_wool_count ctw_game_updates matches -1 run playsound minecraft:block.anvil.use master @p
    execute if score blue_wool_count ctw_game_updates matches -1 run function ctw:setup/wool_place_blue
    execute if score blue_wool_count ctw_game_updates matches -1 run scoreboard players set blue_wool_count ctw_game_updates 10