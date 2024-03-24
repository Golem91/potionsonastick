$data modify storage potions:macro Item.components."minecraft:custom_name" set value '[{"text":"Magic Wand (","color":"dark_purple","italic":false},{"text":" $(count) ","color":"dark_green"},{"color":"white","translate":"wand.$(id).$(type)","fallback":"()","with":["[de_de]","[en_us]"]},{"text":" )","color":"dark_purple"}]'

execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[] run data modify storage potions:macro Item.components."minecraft:custom_name" set value '[{"text":"Magic Wand ()","color":"dark_purple","italic":false}]'

data modify storage potions:macro custom_name set from storage potions:macro Item.components."minecraft:custom_name"

function potions:lore

data modify storage potions:macro lore set from storage potions:macro Item.components."minecraft:lore"

return 1