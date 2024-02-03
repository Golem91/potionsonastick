execute as @a[predicate=potions:stick,scores={click=1..}] run function potions:click
execute as @a[predicate=potions:add,scores={jump=1..}] run function potions:add
execute as @a[predicate=potions:stick_off] unless data entity @s SelectedItem run function potions:off

#reset vectors
scoreboard players reset @a click
scoreboard players reset @a jump