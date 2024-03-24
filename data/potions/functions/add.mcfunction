data remove storage potions:macro Item
data remove storage potions:macro Potion


data modify storage potions:macro Item set from entity @s SelectedItem

#get Potion ids
data modify storage potions:macro Potion.type set from entity @s Inventory.[{Slot:-106b}].id
data modify storage potions:macro Potion.id set from entity @s Inventory.[{Slot:-106b}].components."minecraft:potion_contents".potion

function potions:append with storage potions:macro Potion

data modify storage potions:macro Potion set from storage potions:macro Item.components."minecraft:custom_data".Potions.[0]
function potions:name with storage potions:macro Potion
function potions:texture

#transfer NBT back to player

item replace entity @s weapon.offhand with minecraft:air
function potions:replace with storage potions:macro

execute at @s run playsound minecraft:block.brewing_stand.brew player @s