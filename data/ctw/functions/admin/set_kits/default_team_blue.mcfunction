function ctw:setup/kit_blue/inv_storage_clear

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s
    tellraw @s [{"text":"The ","color":"yellow"},{"text":"Blue Team","color":"blue"},{"text":" kit has been reset to defaults"}]