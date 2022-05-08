data modify storage ctw:storage spawns prepend from storage ctw:storage spawns[-1]
data remove storage ctw:storage spawns[-1]
scoreboard players remove remaining ctw_cycle 1
data modify storage ctw:storage temp set from storage ctw:storage tempid
execute store success score success ctw_cycle run data modify storage ctw:storage temp set from storage ctw:storage spawns[-1].id
execute unless score remaining ctw_cycle matches 0 if score success ctw_cycle matches 1 run function ctw:tps/cycle/spawn