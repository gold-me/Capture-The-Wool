data modify storage ctw:storage tempid set value spawn
function ctw:tps/cycle/locations
execute at @s if score success ctw_cycle matches 1 run tellraw @s {"text": "Can't Leave! Spawn is not Set!","color": "red"}

## This lets the players use the leave command again if no spawn is found (It also removes the need for a lot of extra arguments in the leave.mcfunction file)
    execute if score success ctw_cycle matches 1 run scoreboard players reset @s ctw_leave
    execute if score success ctw_cycle matches 1 run scoreboard players enable @s ctw_leave
