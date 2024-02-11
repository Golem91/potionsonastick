data remove storage potions:macro Item
data remove storage potions:macro Potion


data modify storage potions:macro Item set from entity @s Inventory.[{Slot:-106b}]

data modify storage potions:macro Item.tag.Potion append from storage potions:macro Item.tag.Potion.[0]
data remove storage potions:macro Item.tag.Potion.[0]

data modify storage potions:macro Potion set from storage potions:macro Item.tag.Potion.[0]
function potions:name with storage potions:macro Potion
function potions:texture


item replace entity @s weapon.offhand with minecraft:air
function potions:replace with storage potions:macro Item
function potions:damage
