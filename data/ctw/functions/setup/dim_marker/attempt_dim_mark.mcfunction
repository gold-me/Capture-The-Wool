execute as @e[type=minecraft:item,tag=!ctw_notDimMarker] unless data entity @s Item.tag.ctw.markDimension run tag @s add ctw_notDimMarker
scoreboard players set #marked ctw_setup 0
execute as @e[type=minecraft:item,tag=!ctw_notDimMarker,limit=1] at @s run function ctw:setup/dim_marker/mark_dim
execute if score #marked ctw_setup matches 0 run schedule function ctw:setup/dim_marker/attempt_dim_mark 1t append