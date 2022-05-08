execute at @s unless entity @e[type=minecraft:armor_stand,tag=ctw_dim,distance=..0.01] positioned 2834 1684 -5000000 run function ctw:setup/dim_marker/attempt_start_dim_mark

## Set Dimension
    data modify storage ctw:storage spawns[-1].dim set from entity @s Dimension

## Set General Rotation
    execute if entity @s[y_rotation=-45..45] run data modify storage ctw:storage spawns[-1].Rotation set value 0f
    execute if entity @s[y_rotation=45..135] run data modify storage ctw:storage spawns[-1].Rotation set value 90f
    execute unless entity @s[y_rotation=-135..135] run data modify storage ctw:storage spawns[-1].Rotation set value -180f
    execute if entity @s[y_rotation=-135..-45] run data modify storage ctw:storage spawns[-1].Rotation set value -45f
    ## Order is South, West, North, East

## Set Position
    execute store result storage ctw:storage spawns[-1].Pos[0] double 1 run data get entity @s Pos[0]
    execute store result storage ctw:storage spawns[-1].Pos[1] double 1 run data get entity @s Pos[1]
    execute store result storage ctw:storage spawns[-1].Pos[2] double 1 run data get entity @s Pos[2]
    execute store result storage ctw:storage spawns[-1].displayPos[0] int 1 run data get entity @s Pos[0]
    execute store result storage ctw:storage spawns[-1].displayPos[1] int 1 run data get entity @s Pos[1]
    execute store result storage ctw:storage spawns[-1].displayPos[2] int 1 run data get entity @s Pos[2]