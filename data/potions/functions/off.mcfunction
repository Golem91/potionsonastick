data remove storage potions:macro Item
data remove storage potions:macro Potion
scoreboard players reset .temp count

data modify storage potions:macro Item set from entity @s Inventory.[{Slot:-106b}]

data modify storage potions:macro Item.components."minecraft:custom_data".Potions append from storage potions:macro Item.components."minecraft:custom_data".Potions.[0]
data remove storage potions:macro Item.components."minecraft:custom_data".Potions.[0]

data modify storage potions:macro Potion set from storage potions:macro Item.components."minecraft:custom_data".Potions.[0]
execute store result score .temp count run function potions:name with storage potions:macro Potion
function potions:texture

execute unless score .temp count matches 1 run data merge storage potions:macro {custom_name:'[{"text":"Magic Wand ()","color":"dark_purple","italic":false}]',lore:[]}

item replace entity @s weapon.offhand with minecraft:air
function potions:replace with storage potions:macro

scoreboard players reset .temp count