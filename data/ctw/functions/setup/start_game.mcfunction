scoreboard players set isStarted ctw_setup 1
scoreboard players reset * ctw_wool_break_B
scoreboard players reset * ctw_wool_break_R
scoreboard players reset * ctw_deaths
function ctw:game_checks/get_info_player
execute if score playerNum ctw_setup > playerNum_teams ctw_setup run function ctw:admin/fill_team/fill_teams
effect clear @a[tag=ctw_players]
gamemode survival @a[tag=ctw_players,tag=!ctw_admin]
tag @a[tag=ctw_players] add ctw_inGame

function ctw:setup/wool_place_all
function ctw:setup/kit_team_all
function ctw:tps/tp_team_all

## Stop players from changing teams after the game starts
   scoreboard players reset @a[tag=ctw_players] ctw_join_red
   scoreboard players reset @a[tag=ctw_players] ctw_join_blue
   scoreboard players reset @a[tag=ctw_players] ctw_ready

## Announce game start
   tellraw @a[tag=ctw_players] {"text":"The game has started!","color":"gold","bold":true}
   execute as @a[tag=ctw_players] at @s run playsound minecraft:entity.ender_dragon.growl master @s