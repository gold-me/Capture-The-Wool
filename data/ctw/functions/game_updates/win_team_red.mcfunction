function ctw:game_updates/end_game

## End of game announcement
    title @a[tag=ctw_players] reset
    title @a[tag=ctw_players] title [{"text":"The ","color":"dark_green"},{"text":"Red Team ","color":"red"},{"text":"Wins!"}]
    title @a[tag=ctw_players] subtitle {"text":"Thanks for playing!","color":"dark_green"}
    execute as @a[tag=ctw_players] at @s run playsound minecraft:ui.toast.challenge_complete master @s