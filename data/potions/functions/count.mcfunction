$execute if data storage potions:macro Item.components."minecraft:custom_data".Potions.[$(count)] run scoreboard players add @s count 1
execute store result storage potions:macro count byte 1 run scoreboard players get @s count

$execute unless data storage potions:macro Item.components."minecraft:custom_data".Potions.[$(count)] run return 0
function potions:count with storage potions:macro
