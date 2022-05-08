tag @s add ctw_hasWool
data modify storage ctw:storage game_states append value {wool_red:1b}

## Give player item instaed of block (to prevent cheese)
    clear @s minecraft:red_wool
    scoreboard players reset @s ctw_wool_break_R
    execute at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:red_wool"}},distance=..10]
    item replace entity @s hotbar.4 with red_dye{display:{Name:'{"text":"Red Team\'s Wool","color":"red","italic":false}'},ctw:"red_wool",Enchantments:[{}]} 1

effect give @s glowing 1000000 0 true
tellraw @a[tag=ctw_players] [{"selector":"@s"},{"text":" has ","color":"yellow"},{"text":"Stolen ","color":"red","bold":true},{"text":"Red Team's ","color":"red"},{"text":"Wool","color":"yellow"}]
execute as @a[tag=ctw_players] at @s run playsound minecraft:block.note_block.pling master @s

function ctw:game_checks/check_nocheese