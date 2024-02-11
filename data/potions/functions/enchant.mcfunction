execute if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:power",lvl:1s}]}}}] run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:power",lvl:1s}
execute if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:power",lvl:2s}]}}}] run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:power",lvl:2s}
execute if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:power",lvl:3s}]}}}] run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:power",lvl:3s}
execute if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:power",lvl:4s}]}}}] run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:power",lvl:4s}
execute if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:power",lvl:5s}]}}}] run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:power",lvl:5s}

particle minecraft:totem_of_undying ~ ~ ~ 0.1 0.5 0.1 0.1 20 normal @a
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 0.25

kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:power"}]}}}]