execute as @a[predicate=potions:stick,scores={click=1..}] run function potions:click
execute as @a[predicate=potions:add,scores={jump=1..}] run function potions:add
execute as @a[predicate=potions:stick_off] unless data entity @s SelectedItem run function potions:off

execute as @a[predicate=potions:knowledge] run item replace entity @s weapon.mainhand with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"Magic Want ()","color":"dark_purple","italic":false}'},Damage:100,CustomModelData:50}

#reset vectors
scoreboard players reset @a click
scoreboard players reset @a jump

