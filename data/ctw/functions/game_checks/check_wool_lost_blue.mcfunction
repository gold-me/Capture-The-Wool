execute as @a[team=ctw_red_team,tag=ctw_hasWool,limit=1,sort=random] if score @s ctw_deaths matches 1.. run function ctw:game_updates/wool_lost_blue
execute as @a[team=ctw_red_team,tag=ctw_hasWool,tag=ctw_capture,limit=1,sort=random] at @s unless predicate ctw:on_block_redstone run function ctw:game_updates/wool_lost_blue
execute as @a[team=ctw_red_team,tag=ctw_hasWool,tag=!ctw_capture,limit=1,sort=random] at @s if predicate ctw:on_block_redstone run function ctw:game_updates/capture_team_red