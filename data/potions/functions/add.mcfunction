data remove storage potions:macro Item
data remove storage potions:macro Potion

data modify storage potions:macro Item set from entity @s SelectedItem

#get Potion ids
data modify storage potions:macro Potion.type set from entity @s Inventory.[{Slot:-106b}].id
data modify storage potions:macro Potion.id set from entity @s Inventory.[{Slot:-106b}].tag.Potion

execute at @s run function potions:append with storage potions:macro Potion

#transfer NBT back to player
item replace entity @s weapon.offhand with minecraft:air
function potions:replace with storage potions:macro Item
