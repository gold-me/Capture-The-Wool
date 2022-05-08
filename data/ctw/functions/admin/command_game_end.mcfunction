## Message for when game is ended
    tellraw @a[tag=ctw_players] [{"text":"NOTE: ","color":"yellow","bold":true},{"text":"An Admin has ended the game","color":"red"}]
    execute as @a[tag=ctw_players] at @s run playsound minecraft:entity.enderman.teleport master @s

function ctw:game_updates/end_game

## Re-enable trigger
    scoreboard players reset @s ctw_end_game
    scoreboard players enable @s ctw_end_game