data modify entity @s Pos set from storage ctw:storage spawns[-1].Pos
data modify entity @s Rotation[0] set from storage ctw:storage spawns[-1].Rotation
execute at @s as @s run tp ~0.5 ~ ~0.5
tp @a[tag=ctw_tpto,limit=1] @s
kill @s