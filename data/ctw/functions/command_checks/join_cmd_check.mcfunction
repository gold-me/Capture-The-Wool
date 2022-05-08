## This is to make sure that the player is not in the game already, and that there is an actual lobby to teleport them to
    data modify storage ctw:storage tempid set value lobby
    function ctw:tps/cycle/locations
    execute as @s[tag=!ctw_players] unless score remaining ctw_cycle matches 0 unless score isStarted ctw_setup matches 1 run function ctw:main/join

## No Lobby message
    execute as @s if score remaining ctw_cycle matches 0 run tellraw @s {"text": "There is no Lobby!","color": "red"}

## Game in progress message
    execute as @s if score isStarted ctw_setup matches 1 run tellraw @s {"text": "The game has already started!","color": "red"}

## Reset Trigger Command
    trigger ctw_join set 0
    scoreboard players reset @s ctw_join
    tag @s remove ctw_canJoin
