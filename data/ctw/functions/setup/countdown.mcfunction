
## Messages for seconds left
    execute if score countdown ctw_setup matches 10 run tellraw @a[tag=ctw_players] [{"text":"The game is starting in... ","color":"yellow"},{"score":{"name":"countdown","objective":"ctw_setup"},"color":"gold","bold":true},{"text":" seconds"}]
    execute as @a[tag=ctw_players] at @s if score countdown ctw_setup matches 10 run playsound minecraft:block.note_block.hat master @s
    execute if score countdown ctw_setup matches 2..5 run tellraw @a[tag=ctw_players] [{"text":"The game is starting in... ","color":"yellow"},{"score":{"name":"countdown","objective":"ctw_setup"},"color":"gold","bold":true},{"text":" seconds"}]
    execute if score countdown ctw_setup matches 1 run tellraw @a[tag=ctw_players] [{"text":"The game is starting in... ","color":"yellow"},{"score":{"name":"countdown","objective":"ctw_setup"},"color":"gold","bold":true},{"text":" second"}]
        execute as @a[tag=ctw_players] at @s if score countdown ctw_setup matches 1..5 run playsound minecraft:block.note_block.hat master @s


execute if score countdown ctw_setup matches 1.. run scoreboard players remove countdown ctw_setup 1
execute if score countdown ctw_setup matches 1.. run schedule function ctw:setup/countdown 1s
execute if score countdown ctw_setup matches 0 run schedule function ctw:setup/start_game 1s
execute if score countdown ctw_setup matches 0 run scoreboard players set countdown ctw_setup 5