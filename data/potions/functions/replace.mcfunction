$item replace entity @s weapon.mainhand with minecraft:warped_fungus_on_a_stick[minecraft:custom_name='$(custom_name)',minecraft:lore=$(lore),minecraft:custom_model_data=$(custom_model_data),minecraft:custom_data={MagicWand:true}]
item modify entity @s weapon.mainhand potions:snbt
function potions:damage