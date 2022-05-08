summon marker ~ ~ ~ {Tags:["ctw_dim","ctw_new"]}
data modify entity @e[type=marker,tag=ctw_new,limit=1,distance=..01] data.dim set from entity @s Item.tag.ctw.markDimension
tag @e[type=marker,tag=ctw_new,limit=1,distance=..01] remove ctw_new
kill @s
scoreboard players set #marked ctw_setup 1