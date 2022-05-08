function ctw:setup/kit_blue/inv_store

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s
    tellraw @s [{"text":"The ","color":"green"},{"text":"Blue Team","color":"blue"},{"text":" kit has been set to your inventory"}]