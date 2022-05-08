tag @s remove ctw_hasWool
tag @s remove ctw_capture
data remove storage ctw:storage game_states[{wool_blue:1b}]
clear @s blue_dye{ctw:blue_wool}
effect clear @s glowing

tellraw @a[tag=ctw_players] [{"selector":"@s"},{"text":" has ","color":"yellow"},{"text":"Lost ","color":"gray","bold":true},{"text":"Blue Team's ","color":"blue"},{"text":"Wool","color":"yellow"}]
    execute as @a[tag=ctw_players] at @s run playsound minecraft:block.note_block.pling master @s

schedule clear ctw:game_updates/capture_team_red
scoreboard players set red_cap_count ctw_game_updates 5
schedule function ctw:game_updates/wool_restore_blue 1s