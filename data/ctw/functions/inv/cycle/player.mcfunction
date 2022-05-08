data modify storage ctw:inv players prepend from storage ctw:inv players[-1]
data remove storage ctw:inv players[-1]
scoreboard players remove remaining ctw_cycle 1
data modify storage ctw:inv temp set from entity @s UUID
execute store success score success ctw_cycle run data modify storage ctw:inv temp set from storage ctw:inv players[-1].uuid
execute unless score remaining ctw_cycle matches 0 if score success ctw_cycle matches 1 run function ctw:inv/cycle/player