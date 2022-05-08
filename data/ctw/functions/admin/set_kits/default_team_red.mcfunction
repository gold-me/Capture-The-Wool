function ctw:setup/kit_red/inv_storage_clear

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s
    tellraw @s [{"text":"The ","color":"yellow"},{"text":"Red Team","color":"red"},{"text":" kit has been reset to defaults"}]