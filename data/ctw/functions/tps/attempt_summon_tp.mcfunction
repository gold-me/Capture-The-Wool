data modify storage ctw:storage temp set from storage ctw:storage spawns[-1].dim
execute store success score success ctw_cycle run data modify storage ctw:storage temp set from entity @s data.dim
execute if score success ctw_cycle matches 0 at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ctw_tp"]}