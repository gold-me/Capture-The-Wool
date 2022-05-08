execute if score red_wool_count ctw_game_updates matches 10 run tellraw @a[tag=ctw_players] [{"text": "Red Team's ","color": "red"},{"text":"Wool will be restored in... ","color":"yellow"},{"score":{"name":"red_wool_count","objective":"ctw_game_updates"},"color":"gold","bold":true}]

## Only repeat message every second if countdown is at 5 or lower
    execute if score red_wool_count ctw_game_updates matches 1..5 run tellraw @a[tag=ctw_players] [{"text": "Red Team's ","color": "red"},{"text":"Wool will be restored in... ","color":"yellow"},{"score":{"name":"red_wool_count","objective":"ctw_game_updates"},"color":"gold","bold":true}]

## Repeat countdown until it reaches 0
    execute if score red_wool_count ctw_game_updates matches 0.. run scoreboard players remove red_wool_count ctw_game_updates 1
    execute as @a[tag=ctw_players] at @s if score red_wool_count ctw_game_updates matches 0.. run playsound minecraft:block.note_block.hat master @p
    execute if score red_wool_count ctw_game_updates matches 0.. run schedule function ctw:game_updates/wool_restore_red 1s

## Code for when countdown ends
    execute if score red_wool_count ctw_game_updates matches -1 run tellraw @a[tag=ctw_players] {"text": "The Red Team's Wool has been restored","color": "red","bold": true}
        execute as @a[tag=ctw_players] at @s if score red_wool_count ctw_game_updates matches -1 run playsound minecraft:block.anvil.use master @p
    execute if score red_wool_count ctw_game_updates matches -1 run function ctw:setup/wool_place_red
    execute if score red_wool_count ctw_game_updates matches -1 run scoreboard players set red_wool_count ctw_game_updates 10