tag @s remove ctw_hasWool
tag @s remove ctw_capture
data remove storage ctw:storage game_states[{wool_red:1b}]
clear @s red_dye{ctw:red_wool}
effect clear @s glowing

tellraw @a[tag=ctw_players] [{"selector":"@s"},{"text":" has ","color":"yellow"},{"text":"Lost ","color":"gray","bold":true},{"text":"Red Team's ","color":"red"},{"text":"Wool","color":"yellow"}]
    execute as @a[tag=ctw_players] at @s run playsound minecraft:block.note_block.pling master @s

schedule clear ctw:game_updates/capture_team_blue
scoreboard players set blue_cap_count ctw_game_updates 5
schedule function ctw:game_updates/wool_restore_red 1s