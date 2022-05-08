function ctw:setup/kit_red/inv_store

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s
    tellraw @s [{"text":"The ","color":"green"},{"text":"Red Team","color":"red"},{"text":" kit has been set to your inventory"}]