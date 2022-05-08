clear @s

## Blue Team Armor
    item replace entity @s armor.head with blue_wool{display:{Name:'{"text":"Blue Team Helmet","color":"blue","italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
    item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Blue Team Chestplate","color":"blue","italic":false}',color:3949738},HideFlags:68,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}]} 1
    item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Blue Team Leggings","color":"blue","italic":false}',color:3949738},HideFlags:68,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}]} 1
    item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Blue Team Boots","color":"blue","italic":false}',color:3949738},HideFlags:68,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}]} 1

## Blue Team Hotbar
    item replace entity @s hotbar.0 with slime_ball{display:{Name:'{"text":"Slap Ball","color":"green","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:knockback",lvl:2s}]} 1
    item replace entity @s hotbar.1 with creeper_spawn_egg{display:{Name:'{"text":"Blue Team Creeper","color":"blue","bold":true,"italic":false}',Lore:['{"text":"\\"KABOOM?\\""}','{"text":"\\"Yes Rico, Kaboom.\\""}']},Enchantments:[{}],EntityTag:{CustomNameVisible:1b,Team:"ctw_blue_team",DeathLootTable:"empty"}} 8
    item replace entity @s hotbar.8 with cooked_beef 16