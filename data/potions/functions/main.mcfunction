execute as @a[predicate=potions:stick,scores={click=1..}] run function potions:click
execute as @a[predicate=potions:add,scores={jump=1..}] run function potions:add
execute as @a[predicate=potions:add,predicate=potions:sneak] run function potions:add
execute as @a[predicate=potions:stick_off] unless data entity @s SelectedItem run function potions:off

execute as @a[predicate=potions:knowledge] run item replace entity @s weapon.mainhand with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"Magic Wand ()","color":"dark_purple","italic":false}'},Damage:100,CustomModelData:11000,MagicWand:true}

#reset vectors
scoreboard players reset @a click
scoreboard players reset @a jump

#add enchant
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{MagicWand:1b}}},nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:power"}]}}}] at @s if block ~ ~-0.1 ~ #minecraft:anvil if entity @e[type=item,limit=1,sort=nearest,distance=..0.3,nbt={Item:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:power"}]}}}] run function potions:enchant

execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{MagicWand:1b}}},nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:power"}]}}}] at @s if block ~ ~ ~ minecraft:enchanting_table if entity @e[type=item,limit=1,sort=nearest,distance=..0.3,nbt={Item:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:power"}]}}}] run function potions:enchant